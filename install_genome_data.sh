#!/bin/bash
# Stop on error
set -e

SPECIES_FILE_BASENAME=aquas_chipseq_species.conf
CONDA_ENV=aquas_chipseq

if [ "$#" -lt 2 ]; then
  echo
  echo "This script installs data for genome [GENOME] on a directory [DATA_DIR]."
  echo "Genome data files will be installed on [DATA_DIR]/[GENOME]."
  echo "A species file [DATA_DIR]/${SPECIES_FILE_BASENAME} will be generated and added to default.conf."
  echo
  echo "Supported genomes: hg19, mm9, hg38 (BETA), mm10 (BETA)"
  echo
  echo "Usage: ./install_genome_data.sh [GENOME] [DATA_DIR]"
  echo "  Example: ./install_genome_data.sh hg19 $TMP/genome_data"
  echo
  exit 0
fi

GENOME=$1
DATA_DIR=$2
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SPECIES_FILE=${DATA_DIR}/${SPECIES_FILE_BASENAME}

echo 

if [[ $GENOME == "hg19" || $GENOME == "mm9" ]]; then
  echo
elif [[ $GENOME == "hg38" ]]; then
  echo "Warning: hg38 is BETA (GRCh38.p3). There is no unique mappability tracks and blacklist (IDR peaks will not be filtered)."
  echo "Press any key to continue..."
  read -n1
elif [[ $GENOME == "mm10" ]]; then
  echo "Warning: mm10 is BETA (GRCm38.p4). There is no unique mappability tracks and blacklist (IDR peaks will not be filtered)."
  echo "Press any key to continue..."
  read -n1
else
  echo "Error: unsupported genome $GENOME"
  exit 1
fi

echo 

# URLs
if [ $GENOME == "hg19" ]; then

  CHRSZ="http://hgdownload.cse.ucsc.edu/goldenpath/hg19/encodeDCC/referenceSequences/male.hg19.chrom.sizes"
  REF_FA="http://hgdownload.cse.ucsc.edu/goldenpath/hg19/encodeDCC/referenceSequences/male.hg19.fa.gz"
  SEQ="http://hgdownload.cse.ucsc.edu/goldenpath/hg19/chromosomes"
  GENSZ="hs"
  UMAP="https://personal.broadinstitute.org/anshul/projects/umap/encodeHg19Male/globalmap_k20tok54.tgz"
  BLACKLIST="http://hgdownload.cse.ucsc.edu/goldenpath/hg19/encodeDCC/wgEncodeMapability/wgEncodeDacMapabilityConsensusExcludable.bed.gz"
  CHR_END_ID=22; # 22 chromosomes + chrM, chrX, chrY

elif [ $GENOME == "hg38" ]; then

  CHRSZ="http://hgdownload.cse.ucsc.edu/goldenPath/hg38/bigZips/hg38.chrom.sizes"
  REF_FA="ftp://ftp.sanger.ac.uk/pub/gencode/Gencode_human/release_23/GRCh38.p3.genome.fa.gz"
  SEQ="http://hgdownload.cse.ucsc.edu/goldenPath/hg38/chromosomes"
  GENSZ="hs"
  UMAP=""
  BLACKLIST=""
  CHR_END_ID=22; # 22 chromosomes + chrM, chrX, chrY

elif [ $GENOME == "mm9" ]; then

  CHRSZ="http://hgdownload-test.cse.ucsc.edu/goldenPath/mm9/encodeDCC/referenceSequences/male.mm9.chrom.sizes"
  REF_FA="http://hgdownload-test.cse.ucsc.edu/goldenPath/mm9/encodeDCC/referenceSequences/male.mm9.fa.gz"
  SEQ="http://hgdownload.cse.ucsc.edu/goldenpath/mm9/chromosomes"
  GENSZ="mm"
  UMAP="https://personal.broadinstitute.org/anshul/projects/umap/mm9/globalmap_k20tok54.tgz"
  BLACKLIST="https://personal.broadinstitute.org/anshul/projects/mouse/blacklist/mm9-blacklist.bed.gz"
  CHR_END_ID=19; # 19 chromosomes + chrM, chrX, chrY

elif [ $GENOME == "mm10" ]; then

  CHRSZ="http://hgdownload.cse.ucsc.edu/goldenPath/mm10/bigZips/mm10.chrom.sizes"
  REF_FA="ftp://ftp.sanger.ac.uk/pub/gencode/Gencode_mouse/release_M10/GRCm38.p4.genome.fa.gz"
  SEQ="http://hgdownload.cse.ucsc.edu/goldenPath/mm10/chromosomes"
  GENSZ="mm"
  UMAP=""
  BLACKLIST=""
  CHR_END_ID=19; # 19 chromosomes + chrM, chrX, chrY

fi

# Prefix of reference genome
REF_FA_PREFIX=$(basename ${REF_FA} .gz)

# Create directories
mkdir -p ${DATA_DIR}/$GENOME
mkdir -p ${DATA_DIR}/$GENOME/seq
mkdir -p ${DATA_DIR}/$GENOME/bwa_index

echo "Downloading files..."
cd ${DATA_DIR}/$GENOME
if [[ $UMAP != "" ]]; then wget -N -c $UMAP; fi
wget -N -c $CHRSZ
wget -N -c ${REF_FA}
if [[ $BLACKLIST != "" ]]; then wget -N -c $BLACKLIST; fi
mkdir -p seq && cd seq
for i in `seq 1 ${CHR_END_ID}; echo -e "M\nX\nY"`; do wget -N -c $SEQ/chr$i.fa.gz; done

echo "Extracting/processing data files..."
cd ${DATA_DIR}/$GENOME
if [ ! -f ${REF_FA_PREFIX} ]; then
  gzip -d -f -c ${REF_FA_PREFIX}.gz > ${REF_FA_PREFIX}
fi
if [[ $UMAP != "" ]]; then tar zxvf $(basename $UMAP) --skip-old-files; fi
for i in `seq 1 ${CHR_END_ID}; echo -e "M\nX\nY"`; do
  if [ ! -f seq/chr$i.fa ]; then
    gzip -f -d -c seq/chr$i.fa.gz > seq/chr$i.fa
  fi
done

echo "Building bwa index..."
cd ${DATA_DIR}/$GENOME/bwa_index
rm -f ${REF_FA_PREFIX}
ln -s ../${REF_FA_PREFIX} ${REF_FA_PREFIX}
if [ ! -f ${REF_FA_PREFIX}.sa ]; then
  source activate ${CONDA_ENV}
  bwa index ${REF_FA_PREFIX}
fi

echo "Creating species file... (${SPECIES_FILE})"
cd ${DATA_DIR} && touch ${SPECIES_FILE}

if [[ $(grep "\[$GENOME\]" ${SPECIES_FILE} | wc -l) < 1 ]]; then
  if [[ $UMAP != "" ]]; then UMAP_PATH="${DATA_DIR}/$GENOME/$(basename $UMAP .tgz)"; fi
  if [[ $BLACKLIST != "" ]]; then BLACKLIST_PATH="${DATA_DIR}/$GENOME/$(basename $BLACKLIST)"; fi

  echo -e "[$GENOME] # installed by install_genome_data.sh" >> ${SPECIES_FILE}
  echo -e "chrsz\t= ${DATA_DIR}/$GENOME/$(basename $CHRSZ)" >> ${SPECIES_FILE}
  echo -e "seq\t= ${DATA_DIR}/$GENOME/seq" >> ${SPECIES_FILE}
  echo -e "gensz\t= $GENSZ" >> ${SPECIES_FILE}
  echo -e "umap\t= ${UMAP_PATH}" >> ${SPECIES_FILE}
  echo -e "bwa_idx\t= ${DATA_DIR}/$GENOME/bwa_index/${REF_FA_PREFIX}" >> ${SPECIES_FILE}
  echo -e "blacklist\t= ${BLACKLIST_PATH}" >> ${SPECIES_FILE}
  echo "" >> ${SPECIES_FILE}
fi

# Add species file to ./default.env
sed -i "/DEF_SPECIES_FILE/c\species_file\t= ${SPECIES_FILE}\t# DEF_SPECIES_FILE: DO NOT MODIFY THIS COMMENT (install_genome_data.sh WILL NOT WORK)." "${SCRIPT_DIR}/default.env"

echo "=== Installing genome data ($GENOME) successfully done. ==="
