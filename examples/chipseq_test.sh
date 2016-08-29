#!/bin/bash

WORK=/srv/scratch/shared/mitra/leepc12/run/chipseq_test/CTCF/Snyder_CTCF_GM12878_PE
mkdir -p $WORK; cd $WORK
bds_scr Snyder_CTCF_GM12878_PE /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -pe -nth 12 -species hg19 -title CTCF_Snyder_CTCF_GM12878_PE \
-fastq1_1 /srv/scratch/shared/mitra/leepc12/data/CTCF/PE/Snyder_CTCF_GM12878_PE_Rep1_1.fastq.gz \
-fastq1_2 /srv/scratch/shared/mitra/leepc12/data/CTCF/PE/Snyder_CTCF_GM12878_PE_Rep1_2.fastq.gz \
-fastq2_1 /srv/scratch/shared/mitra/leepc12/data/CTCF/PE/Snyder_CTCF_GM12878_PE_Rep2_1.fastq.gz \
-fastq2_2 /srv/scratch/shared/mitra/leepc12/data/CTCF/PE/Snyder_CTCF_GM12878_PE_Rep2_2.fastq.gz \
-ctl_fastq1_1 /srv/scratch/shared/mitra/leepc12/data/CTCF/PE/Snyder_Input_GM12878_PE_1.fastq.gz \
-ctl_fastq1_2 /srv/scratch/shared/mitra/leepc12/data/CTCF/PE/Snyder_Input_GM12878_PE_2.fastq.gz \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/CTCF/Snyder_CTCF_GM12878_PE/out

WORK=/srv/scratch/shared/mitra/leepc12/run/chipseq_test/CTCF/Snyder_CTCF_GM12878_SE
mkdir -p $WORK; cd $WORK
bds_scr Snyder_CTCF_GM12878_SE /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -se -nth 6 -species hg19 -title CTCF_Snyder_CTCF_GM12878_SE \
-fastq1 /srv/scratch/shared/mitra/leepc12/data/CTCF/SE/Snyder_CTCF_GM12878_SE_Rep1.fastq.gz \
-fastq2 /srv/scratch/shared/mitra/leepc12/data/CTCF/SE/Snyder_CTCF_GM12878_SE_Rep2.fastq.gz \
-ctl_fastq1 /srv/scratch/shared/mitra/leepc12/data/CTCF/SE/Snyder_Input_GM12878_SE.fastq.gz \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/CTCF/Snyder_CTCF_GM12878_SE/out

WORK=/srv/scratch/shared/mitra/leepc12/run/chipseq_test/GATA2/HAIB_GATA2_K562_SE
mkdir -p $WORK; cd $WORK
bds_scr HAIB_GATA2_K562_SE /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -se -nth 6 -species hg19 -title GATA2_HAIB_GATA2_K562_SE \
-fastq1 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_GATA2_K562_SE_Rep1.fastq.gz \
-fastq2 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_GATA2_K562_SE_Rep2.fastq.gz \
-ctl_fastq1 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_Input_K562_SE_Rep1.fastq.gz \
-ctl_fastq2 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_Input_K562_SE_Rep2.fastq.gz \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/GATA2/HAIB_GATA2_K562_SE/out

WORK=/srv/scratch/shared/mitra/leepc12/run/chipseq_test/GATA2/UCD_GATA2_K562_SE
mkdir -p $WORK; cd $WORK
bds_scr UCD_GATA2_K562_SE /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -se -nth 6 -species hg19 -title GATA2_UCD_GATA2_K562_SE \
-fastq1 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_GATA2_K562_SE_Rep1.fastq.gz \
-fastq2 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_GATA2_K562_SE_Rep2.fastq.gz \
-ctl_fastq1 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_Input_K562_SE_Rep1.fastq.gz \
-ctl_fastq2 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/HAIB_GATA2_K562_SE/HAIB_Input_K562_SE_Rep2.fastq.gz \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/GATA2/UCD_GATA2_K562_SE/out

WORK=/srv/scratch/shared/mitra/leepc12/run/chipseq_test/GATA2/UChicago_GATA2_K562_SE
mkdir -p $WORK; cd $WORK
bds_scr UChicago_GATA2_K562_SE /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -se -nth 6 -species hg19 -title GATA2_UChicago_GATA2_K562_SE \
-fastq1 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/UChicago_GATA2_K562_SE/UChicago_GATA2_K562_SE_Rep1.fastq.gz \
-fastq2 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/UChicago_GATA2_K562_SE/UChicago_GATA2_K562_SE_Rep2.fastq.gz \
-ctl_fastq1 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/UChicago_GATA2_K562_SE/UChicago_Input_K562_SE_Rep1.fastq.gz \
-ctl_fastq2 /srv/scratch/shared/mitra/leepc12/data/GATA2/SE/UChicago_GATA2_K562_SE/UChicago_Input_K562_SE_Rep2.fastq.gz \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/GATA2/UChicago_GATA2_K562_SE/out

WORK=/srv/scratch/shared/mitra/leepc12/run/chipseq_test/YY1/HudsonAlpha
mkdir -p $WORK; cd $WORK
bds_scr HudsonAlpha /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -se -nth 4 -species hg19 -title YY1_HudsonAlpha \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/YY1/HudsonAlpha/out \
-fastq1 /srv/scratch/shared/mitra/leepc12/data/YY1/HudsonAlpha/ENCFF000OHH.fastq.gz \
-fastq2 /srv/scratch/shared/mitra/leepc12/data/YY1/HudsonAlpha/ENCFF000OHO.fastq.gz \
-ctl_fastq1 /srv/scratch/shared/mitra/leepc12/data/YY1/HudsonAlpha/ENCFF000ODP.fastq.gz 

WORK=/srv/scratch/shared/mitra/leepc12/run/chipseq_test/YY1/Sydh
mkdir -p $WORK; cd $WORK
bds_scr Sydh /users/leepc12/code/TF_chipseq_pipeline/chipseq.bds -se -nth 6 -species hg19 -title YY1_Sydh \
-fastq1 /srv/scratch/shared/mitra/leepc12/data/YY1/Sydh/ENCFF000WGS.fastq.gz \
-fastq2 /srv/scratch/shared/mitra/leepc12/data/YY1/Sydh/ENCFF000WGT.fastq.gz \
-ctl_fastq1 /srv/scratch/shared/mitra/leepc12/data/YY1/Sydh/ENCFF000VWV.fastq.gz \
-url_base http://mitra.stanford.edu/kundaje/leepc12/chipseq_test/YY1/Sydh/out


