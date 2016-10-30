TITLE=ENCSR011PEI
FASTQ1=/srv/scratch/shared/surya/leepc12/data/ENCODE_test/ENCSR011PEI/rep1/ENCFF282GDI_ENCFF316FIQ.fastq.gz
FASTQ2=/srv/scratch/shared/surya/leepc12/data/ENCODE_test/ENCSR011PEI/rep2/ENCFF959EDS_ENCFF740WEF.fastq.gz
CTL_FASTQ1=/srv/scratch/shared/surya/leepc12/data/ENCODE_test/ENCSR011PEI/ctl1/ENCFF728HNA.fastq.gz
WORKDIR=/srv/scratch/shared/surya/leepc12/run/ENCODE_test/$TITLE
mkdir -p $WORKDIR; cd $WORKDIR
bds_scr $TITLE /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -title $TITLE -nth 8 -species hg38 -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq1 $CTL_FASTQ1
sleep 1

TITLE=ENCSR017GBO
FASTQ1=/srv/scratch/shared/surya/leepc12/data/ENCODE_test/ENCSR017GBO/rep1/ENCFF697GAP_ENCFF713DPD.fastq.gz
FASTQ2=/srv/scratch/shared/surya/leepc12/data/ENCODE_test/ENCSR017GBO/rep2/ENCFF987WCU.fastq.gz
CTL_FASTQ1=/srv/scratch/shared/surya/leepc12/data/ENCODE_test/ENCSR017GBO/ctl1/ENCFF894RGF_ENCFF414HWA.fastq.gz
WORKDIR=/srv/scratch/shared/surya/leepc12/run/ENCODE_test/$TITLE
mkdir -p $WORKDIR; cd $WORKDIR
bds_scr $TITLE /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -title $TITLE -nth 8 -species hg38 -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq1 $CTL_FASTQ1
sleep 1

TITLE=ENCSR290MUH
FASTQ1=/srv/scratch/shared/surya/leepc12/data/ENCODE_test/ENCSR290MUH/rep1/ENCFF861PLD_ENCFF346WZR.fastq.gz
FASTQ2=/srv/scratch/shared/surya/leepc12/data/ENCODE_test/ENCSR290MUH/rep2/ENCFF701VYF_ENCFF385UYP.fastq.gz
CTL_FASTQ1=/srv/scratch/shared/surya/leepc12/data/ENCODE_test/ENCSR290MUH/ctl1/ENCFF617CIJ_ENCFF322SHV.fastq.gz
WORKDIR=/srv/scratch/shared/surya/leepc12/run/ENCODE_test/$TITLE
mkdir -p $WORKDIR; cd $WORKDIR
bds_scr $TITLE /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -title $TITLE -nth 8 -species hg38 -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq1 $CTL_FASTQ1
sleep 1

