screen -RD HAIB_GATA2_K562_SE

DATA_ROOT=/srv/scratch/leepc12/data; WORK_DIR=/srv/scratch/leepc12/run/chipseq_test; SUFFIX=GATA2/HAIB_GATA2_K562_SE
mkdir -p ${WORK_DIR}/$SUFFIX; cd ${WORK_DIR}/$SUFFIX;
bds /users/leepc12/code/bds_atac/chipseq/chipseq.bds \
-fastq1 ${DATA_ROOT}/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_GATA2_K562_SE_Rep1.fastq.gz \
-fastq2 ${DATA_ROOT}/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_GATA2_K562_SE_Rep2.fastq.gz \
-ctl_fastq1 ${DATA_ROOT}/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_Input_K562_SE_Rep1.fastq.gz \
-ctl_fastq2 ${DATA_ROOT}/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_Input_K562_SE_Rep2.fastq.gz \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/${SUFFIX}/out \
-species hg19 -bwa_idx ${DATA_ROOT}/CTCF/bwa_index/male.hg19.fa.gz -chrsz ${DATA_ROOT}/CTCF/male.hg19.chrom.sizes 

screen -RD Snyder_CTCF_GM12878_PE

DATA_ROOT=/srv/scratch/leepc12/data; WORK_DIR=/srv/scratch/leepc12/run/chipseq_test; SUFFIX=CTCF/Snyder_CTCF_GM12878_PE
mkdir -p ${WORK_DIR}/$SUFFIX; cd ${WORK_DIR}/$SUFFIX;
bds /users/leepc12/code/bds_atac/chipseq/chipseq.bds \
-fastq1_1 ${DATA_ROOT}/CTCF/PE/Snyder_CTCF_GM12878_PE_Rep1_1.fastq.gz \
-fastq1_2 ${DATA_ROOT}/CTCF/PE/Snyder_CTCF_GM12878_PE_Rep1_2.fastq.gz \
-fastq2_1 ${DATA_ROOT}/CTCF/PE/Snyder_CTCF_GM12878_PE_Rep2_1.fastq.gz \
-fastq2_2 ${DATA_ROOT}/CTCF/PE/Snyder_CTCF_GM12878_PE_Rep2_2.fastq.gz \
-ctl_fastq1_1 ${DATA_ROOT}/CTCF/PE/Snyder_Input_GM12878_PE_1.fastq.gz \
-ctl_fastq1_2 ${DATA_ROOT}/CTCF/PE/Snyder_Input_GM12878_PE_2.fastq.gz \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/${SUFFIX}/out \
-species hg19 -bwa_idx ${DATA_ROOT}/CTCF/bwa_index/male.hg19.fa.gz -chrsz ${DATA_ROOT}/CTCF/male.hg19.chrom.sizes

screen -RD UCD_GATA2_K562_SE

DATA_ROOT=/srv/scratch/leepc12/data; WORK_DIR=/srv/scratch/leepc12/run/chipseq_test; SUFFIX=GATA2/UCD_GATA2_K562_SE
mkdir -p ${WORK_DIR}/$SUFFIX; cd ${WORK_DIR}/$SUFFIX;
bds /users/leepc12/code/bds_atac/chipseq/chipseq.bds \
-species hg19 -bwa_idx ${DATA_ROOT}/CTCF/bwa_index/male.hg19.fa.gz -chrsz ${DATA_ROOT}/CTCF/male.hg19.chrom.sizes \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/${SUFFIX}/out \
-fastq1 ${DATA_ROOT}/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_GATA2_K562_SE_Rep1.fastq.gz \
-fastq2 ${DATA_ROOT}/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_GATA2_K562_SE_Rep2.fastq.gz \
-ctl_fastq1 ${DATA_ROOT}/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_Input_K562_SE_Rep1.fastq.gz \
-ctl_fastq2 ${DATA_ROOT}/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_Input_K562_SE_Rep2.fastq.gz

screen -RD UChicago_GATA2_K562_SE

DATA_ROOT=/srv/scratch/leepc12/data; WORK_DIR=/srv/scratch/leepc12/run/chipseq_test; SUFFIX=GATA2/UChicago_GATA2_K562_SE
mkdir -p ${WORK_DIR}/$SUFFIX; cd ${WORK_DIR}/$SUFFIX;
bds /users/leepc12/code/bds_atac/chipseq/chipseq.bds \
-species hg19 -bwa_idx ${DATA_ROOT}/CTCF/bwa_index/male.hg19.fa.gz -chrsz ${DATA_ROOT}/CTCF/male.hg19.chrom.sizes \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/${SUFFIX}/out \
-fastq1 ${DATA_ROOT}/GATA2/SE/UChicago_GATA2_K562_SE/UChicago_GATA2_K562_SE_Rep1.fastq.gz \
-fastq2 ${DATA_ROOT}/GATA2/SE/UChicago_GATA2_K562_SE/UChicago_GATA2_K562_SE_Rep2.fastq.gz \
-ctl_fastq1 ${DATA_ROOT}/GATA2/SE/UChicago_GATA2_K562_SE/UChicago_Input_K562_SE_Rep1.fastq.gz \
-ctl_fastq2 ${DATA_ROOT}/GATA2/SE/UChicago_GATA2_K562_SE/UChicago_Input_K562_SE_Rep2.fastq.gz

screen -RD Snyder_CTCF_GM12878_SE

DATA_ROOT=/srv/scratch/leepc12/data; WORK_DIR=/srv/scratch/leepc12/run/chipseq_test; SUFFIX=CTCF/Snyder_CTCF_GM12878_SE
mkdir -p ${WORK_DIR}/$SUFFIX; cd ${WORK_DIR}/$SUFFIX;
bds /users/leepc12/code/bds_atac/chipseq/chipseq.bds \
-species hg19 -bwa_idx ${DATA_ROOT}/CTCF/bwa_index/male.hg19.fa.gz -chrsz ${DATA_ROOT}/CTCF/male.hg19.chrom.sizes \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/${SUFFIX}/out \
-fastq1 ${DATA_ROOT}/CTCF/SE/Snyder_CTCF_GM12878_SE_Rep1.fastq.gz \
-fastq2 ${DATA_ROOT}/CTCF/SE/Snyder_CTCF_GM12878_SE_Rep2.fastq.gz \
-ctl_fastq1 ${DATA_ROOT}/CTCF/SE/Snyder_Input_GM12878_SE.fastq.gz

screen -RD HudsonAlpha

DATA_ROOT=/srv/scratch/leepc12/data; WORK_DIR=/srv/scratch/leepc12/run/chipseq_test; SUFFIX=YY1/HudsonAlpha
mkdir -p ${WORK_DIR}/$SUFFIX; cd ${WORK_DIR}/$SUFFIX;
bds /users/leepc12/code/bds_atac/chipseq/chipseq.bds \
-species hg19 -bwa_idx ${DATA_ROOT}/CTCF/bwa_index/male.hg19.fa.gz -chrsz ${DATA_ROOT}/CTCF/male.hg19.chrom.sizes \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/${SUFFIX}/out \
-fastq1 ${DATA_ROOT}/YY1/HudsonAlpha/ENCFF000OHH.fastq.gz \
-fastq2 ${DATA_ROOT}/YY1/HudsonAlpha/ENCFF000OHO.fastq.gz \
-ctl_fastq1 ${DATA_ROOT}/YY1/HudsonAlpha/ENCFF000ODP.fastq.gz

screen -RD Sydh

DATA_ROOT=/srv/scratch/leepc12/data; WORK_DIR=/srv/scratch/leepc12/run/chipseq_test; SUFFIX=YY1/Sydh
mkdir -p ${WORK_DIR}/$SUFFIX; cd ${WORK_DIR}/$SUFFIX;
bds /users/leepc12/code/bds_atac/chipseq/chipseq.bds \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/${SUFFIX}/out \
-species hg19 -bwa_idx ${DATA_ROOT}/CTCF/bwa_index/male.hg19.fa.gz -chrsz ${DATA_ROOT}/CTCF/male.hg19.chrom.sizes \
-fastq1 ${DATA_ROOT}/YY1/Sydh/ENCFF000WGS.fastq.gz \
-fastq2 ${DATA_ROOT}/YY1/Sydh/ENCFF000WGT.fastq.gz \
-ctl_fastq1 ${DATA_ROOT}/YY1/Sydh/ENCFF000VWV.fastq.gz 































WORK_DIR_OLD=/srv/scratch/leepc12/run/TF_chipseq_pipeline_test/$SUFFIX
mkdir -p $WORK_DIR/$SUFFIX/out/align/rep1; cp -pr $WORK_DIR_OLD/out/align_rep1/*.bam $WORK_DIR/$SUFFIX/out/align/rep1/
mkdir -p $WORK_DIR/$SUFFIX/out/align/rep1; cp -pr $WORK_DIR_OLD/out/align_rep1/*.flagstat.qc $WORK_DIR/$SUFFIX/out/align/rep1/
mkdir -p $WORK_DIR/$SUFFIX/out/align/rep2; cp -pr $WORK_DIR_OLD/out/align_rep2/*.bam $WORK_DIR/$SUFFIX/out/align/rep2/
mkdir -p $WORK_DIR/$SUFFIX/out/align/rep2; cp -pr $WORK_DIR_OLD/out/align_rep2/*.flagstat.qc $WORK_DIR/$SUFFIX/out/align/rep2/
mkdir -p $WORK_DIR/$SUFFIX/out/align/ctl1; cp -pr $WORK_DIR_OLD/out/align_ctl_rep1/*.bam $WORK_DIR/$SUFFIX/out/align/ctl1/
mkdir -p $WORK_DIR/$SUFFIX/out/align/ctl1; cp -pr $WORK_DIR_OLD/out/align_ctl_rep1/*.flagstat.qc $WORK_DIR/$SUFFIX/out/align/ctl1/
mkdir -p $WORK_DIR/$SUFFIX/out/align/ctl2; cp -pr $WORK_DIR_OLD/out/align_ctl_rep2/*.bam $WORK_DIR/$SUFFIX/out/align/ctl2/
mkdir -p $WORK_DIR/$SUFFIX/out/align/ctl2; cp -pr $WORK_DIR_OLD/out/align_ctl_rep2/*.flagstat.qc $WORK_DIR/$SUFFIX/out/align/ctl2/
find . -name '*.nmsrt.bam' -delete
find . -name '*.nodup.bam' -delete

