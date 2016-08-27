#!/bin/bash

#rsync -t -av --progress /srv/gsfs0/scratch/leepc12/run/imk_chipseq_surya_121-150 nandi.stanford.edu:/srv/scratch/leepc12/
#cd /srv/gsfs0/scratch/leepc12/run/imk_chipseq
#find . -wholename '*/true_reps/*_rep1-rep2.IDR0.05.filt.narrowPeak.gz'
#grep -rl 'rror' --include=*.BDS.log | grep -v 'Done report'
#grep -rl -e 'rror' --include=*.BDS.log | xargs grep -l -e 'Task dis'
#find . -name '*.BDS.log'


# 1 size: 6811.007202 M
SUFFIX=ZNF391; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF218PFQ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF385QYN.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF738AWV.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF349BCP.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 2 size: 11888.378066 M
SUFFIX=INSM2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF112XWZ.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF724ABX.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF150IYM.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF421MDM.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 3 size: 7818.915219 M
SUFFIX=ZNF654; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF549SRV.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF774IKE.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF406DCD.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF333NBD.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 4 size: 2428.945701 M
SUFFIX=ZNF34; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF796VDT.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF421RRK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF804WQJ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF054CAA.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 5 size: 10684.885877 M
SUFFIX=ZNF254; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF491CRQ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF499UTG.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF755CEE.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF815CTN.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 6 size: 15176.078439 M
SUFFIX=ZNF438; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF558YFM.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF619LOK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF060TWR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF030STW.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 7 size: 9293.991269 M
SUFFIX=ZNF101; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF466VMF.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF231MZY.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF474UCX.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF451TRG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 8 size: 8468.010108 M
SUFFIX=BCL11B; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF899JOK.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF220MRD.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF498UTM.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF878ZEU.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 9 size: 8449.424773 M
SUFFIX=ZNF518A; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF808AJP.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF174HBR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF453FDD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF574GQY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 10 size: 8954.626939 M
SUFFIX=KLF9; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF413POC.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF589GMJ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF943NZH.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF211WHO.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 11 size: 6672.408932 M
SUFFIX=ZNF263; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF324TYI.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF140OPO.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF465KMW.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF454FVW.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 12 size: 14233.701748 M
SUFFIX=CTCF; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF631JSV.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF002OWA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF833BQT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF715KYL.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 13 size: 5483.498104 M
SUFFIX=ZIM3; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF442TAG.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF541YDN.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF007VAZ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF108ZRW.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 14 size: 8828.569077 M
SUFFIX=OSR2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF784CYN.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF575MKR.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF167UWT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF902ARM.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 15 size: 6174.23289 M
SUFFIX=ZNF80; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF438DFM.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF688PNJ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF602DLL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF718PPT.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 16 size: 13621.353023 M
SUFFIX=ZNF366; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF572AYV.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF170KFC.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF291MOB.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF081RWN.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 17 size: 9446.461773 M
SUFFIX=IKZF2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF307WIE.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF018TBF.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF696GEW.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF310AGV.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 18 size: 10166.645194 M
SUFFIX=GLI4; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF173JBW.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF662MFL.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF611UQT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF902JCN.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 19 size: 7587.008555 M
SUFFIX=ZNF292; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF619CUO.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF104INT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF204KUD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF832UNH.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 20 size: 15868.252247 M
SUFFIX=ZNF25; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF267GDK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF260YSX.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF611JSD.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF989SHK.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 21 size: 12159.37797 M
SUFFIX=ZXDB; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF524NND.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF155JSY.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF795PET.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF665GYY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 22 size: 10938.46227 M
SUFFIX=KLF17; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF371HHV.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF957TBU.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF509LKR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF688KSF.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 23 size: 4819.20243 M
SUFFIX=ZNF436; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF494QRY.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF569NJE.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF208IBH.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF596UDV.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 24 size: 8579.620712 M
SUFFIX=MYNN; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF253DEI.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF519KJL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF610VOU.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF213PFC.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 25 size: 9958.588362 M
SUFFIX=ZNF324; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF909UDE.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF936RHD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF447WRG.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF407FUY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 26 size: 3831.383727 M
SUFFIX=EGR2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF208PYP.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF855HOA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF079AVI.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF947KVR.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 27 size: 11167.277013 M
SUFFIX=ZSCAN20; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF669NWL.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF811RLD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF298MAO.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF956WCZ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 28 size: 13642.561145 M
SUFFIX=ZFP37; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF512LPA.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF755SKN.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF301ONT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF895EJG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 29 size: 10084.287615 M
SUFFIX=ZSCAN16; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF093AOC.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF360SUA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF146YVN.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF899ZUF.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 30 size: 7741.772494 M
SUFFIX=ZNF697; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF028WBW.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF025PPV.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF495BIK.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF472OCU.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 31 size: 9457.491196 M
SUFFIX=ZBTB24; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF861LTL.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF872KQW.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF273GON.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF458RUM.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 32 size: 17205.186875 M
SUFFIX=ZSCAN21; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF461NQQ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF423IUW.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF707AMG.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF558LMK.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 33 size: 10628.967762 M
SUFFIX=ZNF546; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF821CNH.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF657YDT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF975HXM.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF120ZET.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 34 size: 9051.921273 M
SUFFIX=ZNF558; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF632OUF.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF382AAJ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF762MHK.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF991FZE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 35 size: 11127.290999 M
SUFFIX=ZNF800; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF381EMJ.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF033RQX.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF729UIC.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF971SQW.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 36 size: 7221.178126 M
SUFFIX=ZNF18; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF317GWC.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF943EAL.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF420ZMB.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF368CYV.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 37 size: 11207.895057 M
SUFFIX=ZNF8; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF016XWU.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF649WXG.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF239LIV.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF410EKJ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 38 size: 15253.238818 M
SUFFIX=PRDM2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF655ROQ.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF331FYR.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF374FPM.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF112OGR.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 39 size: 10375.808062 M
SUFFIX=ZEB1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF841LNZ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF204USM.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF349SST.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF647EYX.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 40 size: 9473.029205 M
SUFFIX=ZBTB21; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF629RQP.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF701LQT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF834QLU.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF956FQW.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 41 size: 3532.140455 M
SUFFIX=ZFP3; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF117CBN.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF321KTO.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF881GTO.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF668FXA.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 42 size: 14672.21439 M
SUFFIX=SCRT2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF858OMD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF709VMO.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF539QEY.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF781UOJ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 43 size: 10484.678154 M
SUFFIX=PATZ1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF413PLS.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF809WZP.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF231IQH.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF972SBT.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 44 size: 8523.018289 M
SUFFIX=ZNF296; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF432LCM.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF860VMB.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF137UTR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF849PNY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 45 size: 10869.792801 M
SUFFIX=ZNF146; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF441XRJ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF209LAN.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF382JJC.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF027IUI.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 46 size: 12293.714732 M
SUFFIX=KLF7; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF613EQS.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF899AEL.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF177UXL.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF568ZTC.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 47 size: 9694.593823 M
SUFFIX=SP3; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF146VSJ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF253QUP.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF115RSO.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF743IFE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 48 size: 11749.195038 M
SUFFIX=ZNF610; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF911HHR.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF333HZB.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF316GJN.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF564WFC.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 49 size: 10899.291978 M
SUFFIX=ZNF580; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF853ZLC.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF919KAD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF952WBI.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF853FHN.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 50 size: 9008.902065 M
SUFFIX=ZFP62; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF263SVP.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF855WYV.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF813EXZ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF136VIA.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 51 size: 8878.465054 M
SUFFIX=ZNF239; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF876PMY.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF586BYR.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF912QAD.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF352PQY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 52 size: 11277.677223 M
SUFFIX=ZBTB4; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF903GKQ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF469VXI.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF351SLE.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF990KIW.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 53 size: 10488.655347 M
SUFFIX=ZNF641; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF499VFM.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF802HEH.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF272PEB.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF849HST.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 54 size: 13263.265432 M
SUFFIX=ZNF501; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF640PHT.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF716DCY.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF436WIC.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF359NBE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 55 size: 14209.061842 M
SUFFIX=SCRT1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF783NLA.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF202RSF.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF029VAX.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF251KLG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 56 size: 8543.598838 M
SUFFIX=ZNF547; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF965LJP.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF923CFU.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF069MUW.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF382DBU.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 57 size: 8991.286882 M
SUFFIX=ZEB2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF815ZVG.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF481UQC.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF419KZP.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF811KIP.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 58 size: 10074.580611 M
SUFFIX=ZNF346; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF281CQQ.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF719XAW.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF330GQX.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF329TGZ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 59 size: 9890.581804 M
SUFFIX=PRDM4; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF400BXJ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF305RJU.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF843RNC.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF903QJF.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 60 size: 9957.001828 M
SUFFIX=ZSCAN23; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF908JVL.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF822SXZ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF342RDH.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF558BIU.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 61 size: 8936.507075 M
SUFFIX=ZNF335; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF251PNI.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF898JXS.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF040FWR.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF860EDN.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 62 size: 13232.797648 M
SUFFIX=ZNF382; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF426TGH.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF279GRE.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF525VTB.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF418SMX.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 63 size: 9790.42 M
SUFFIX=ZNF623; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF735ESZ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF327EZT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF585TRE.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF534JQE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 64 size: 12680.726966 M
SUFFIX=ZNF2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF229CUE.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF567XFI.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF482SYF.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF218OLA.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 65 size: 13146.930502 M
SUFFIX=ZNF394; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF117GAX.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF814VNS.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF402BMA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF911EMT.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 66 size: 9049.322232 M
SUFFIX=ZNF512B; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF666JDY.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF240GGM.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF665TWA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF258JEJ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 67 size: 9551.887615 M
SUFFIX=ZNF76; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF201BJK.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF979NLP.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF655YHB.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF419EHN.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 68 size: 13076.519455 M
SUFFIX=ZNF414; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF580STU.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF857GSA.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF844IHT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF045WFK.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 69 size: 10648.068453 M
SUFFIX=OVOL1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF101UEP.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF331IWD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF349SJL.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF553PPP.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 70 size: 11441.866197 M
SUFFIX=ZFP2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF071WQZ.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF345RFV.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF994BDO.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF025FGS.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 71 size: 6808.946273 M
SUFFIX=ZNF16; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF394DER.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF853FSA.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF217XYK.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF456OPD.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 72 size: 8034.090229 M
SUFFIX=ZNF583; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF068NWW.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF592JOO.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF331PKW.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF671DAR.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 73 size: 5873.031375 M
SUFFIX=ZNF559; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF326HXU.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF044ZNG.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF127AYN.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF094HCY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 74 size: 10221.393026 M
SUFFIX=ZNF846; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF360HHW.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF703HDZ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF493BYY.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF049SSD.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 75 size: 9932.567107 M
SUFFIX=KLF8; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF413XPW.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF139YAL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF238JFX.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF147RGY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 76 size: 10297.069241 M
SUFFIX=GFI1B; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF752NOE.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF429EZN.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF856HJS.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF767SIE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 77 size: 7876.380208 M
SUFFIX=ZNF341; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF176QOJ.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF436WRK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF198ZVP.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF677QBQ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 78 size: 8501.412904 M
SUFFIX=ZNF788; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF829HIO.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF223WMJ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF300NJW.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF649CYF.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 79 size: 6262.930908 M
SUFFIX=ZSCAN2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF390KWS.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF421ZWU.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF086FXT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF541QDI.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 80 size: 12612.288285 M
SUFFIX=ZNF362; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF991IIZ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF051TFE.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF525CDJ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF102GYW.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 81 size: 12081.607309 M
SUFFIX=ZNF215; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF152SPK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF043UUV.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF468DIZ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF127UNC.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 82 size: 11247.67485 M
SUFFIX=ZNF280D; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF262KLX.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF280MIU.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF255PXN.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF186HCK.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 83 size: 10862.845229 M
SUFFIX=FEZF1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF548NUZ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF800BVA.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF485SUN.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF292BLL.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 84 size: 3936.807683 M
SUFFIX=ZNF655; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF062WUX.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF335XLT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF105CAP.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF903TPE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 85 size: 11486.516472 M
SUFFIX=ZNF625; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF580XVC.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF082SLC.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF575LGA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF899OOG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 86 size: 2034.374677 M
SUFFIX=ZNF426; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF763NJP.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF939NQU.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF090LKR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF355EUC.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 87 size: 11092.887875 M
SUFFIX=KLF1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF312XEN.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF426NQH.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF246YGR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF957AJG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 88 size: 13513.301589 M
SUFFIX=ZNF600; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF004IXE.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF238CVL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF488GZC.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF964ENU.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 89 size: 10982.677862 M
SUFFIX=ZNF408; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF493VFZ.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF466YNM.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF520YQA.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF683RJR.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 90 size: 9345.923397 M
SUFFIX=ZFP64; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF653BTH.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF688XKX.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF742FEB.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF460GBK.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 91 size: 6485.675725 M
SUFFIX=ZNF264; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF270PCJ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF515LZE.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF887QEM.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF733DGB.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 92 size: 10408.950693 M
SUFFIX=GLIS2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF641THN.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF100DYO.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF862UVE.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF616ZBL.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 93 size: 4023.760125 M
SUFFIX=SALL4; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF204XNU.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF503VMK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF891XMW.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF401JNX.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 94 size: 9169.999968 M
SUFFIX=ZFP69B; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF322OHR.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF014DZB.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF930PJS.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF363NUU.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 95 size: 11790.33642 M
SUFFIX=ZNF227; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF499XJS.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF378FKK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF485WBT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF094TEV.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 96 size: 9543.071524 M
SUFFIX=ZNF175; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF131OXT.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF076GRK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF574XTS.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF565BCY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 97 size: 12530.732253 M
SUFFIX=ZBTB17; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF499WBO.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF862OIP.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF120XAX.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF587GLI.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 98 size: 9690.829091 M
SUFFIX=ZNF143; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF007JRR.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF908NSK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF727KFQ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF545DSH.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 99 size: 12619.132366 M
SUFFIX=AEBP2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF588QLY.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF151IBJ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF305TCY.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF113SKG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 100 size: 11373.022743 M
SUFFIX=SP7; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF741TKM.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF234GIA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF134EEH.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF605WDX.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 101 size: 7659.384416 M
SUFFIX=ZSCAN1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF942RDF.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF920NWA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF180DSP.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF317HWE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 102 size: 5382.494542 M
SUFFIX=ATF2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF693QBS.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF841UXT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF226SDV.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF354SEG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 103 size: 9197.981548 M
SUFFIX=GTF3A; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF865UNI.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF794MZN.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF642RTB.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF903JRY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 104 size: 7911.973684 M
SUFFIX=ZNF488; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF508MSA.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF193OEU.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF314RZT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF348DMK.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 105 size: 10603.602185 M
SUFFIX=TSHZ1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF147LKM.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF945NKO.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF282WYC.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF319KBV.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 106 size: 10246.43785 M
SUFFIX=ZNF462; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF541YHK.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF383KEW.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF163VEK.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF085GFR.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 107 size: 9176.344576 M
SUFFIX=ZBTB8A; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF906LEJ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF592FUT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF872RVH.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF018COO.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 108 size: 10161.865657 M
SUFFIX=WT1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF999JFC.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF053VVJ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF474NQE.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF179CUG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 109 size: 14018.808346 M
SUFFIX=ZNF71; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF413ZHB.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF244FZX.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF369REJ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF123UWV.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 110 size: 14981.109177 M
SUFFIX=ZNF317; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF751QQN.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF179DRM.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF706MKL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF243GIO.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 111 size: 10206.794567 M
SUFFIX=ZNF680; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF706OYX.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF292AJW.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF754UWT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF513JDU.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 112 size: 11654.321866 M
SUFFIX=ZSCAN5A; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF022LNW.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF896GER.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF915HPV.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF992BVX.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 113 size: 10156.477035 M
SUFFIX=REST; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF807MLK.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF774HWW.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF846CXS.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF554YBC.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 114 size: 12525.322957 M
SUFFIX=KLF16; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF877OHU.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF509PJP.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF408NSX.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF454MNE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 115 size: 6671.496125 M
SUFFIX=ZNF165; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF397ZWU.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF235GNU.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF959UEX.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF826INZ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 116 size: 7997.674162 M
SUFFIX=ZBTB39; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF770ANE.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF088QQV.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF078ILD.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF774TMH.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 117 size: 9587.28314 M
SUFFIX=ZBTB33; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF569QXG.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF154HBU.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF644ORY.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF415ELT.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 118 size: 5971.802425 M
SUFFIX=PRDM12; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF923WIN.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF909GZY.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF518DXW.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF728GHG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 119 size: 8669.684148 M
SUFFIX=MAZ; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF590EUS.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF469HPU.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF944NFT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF463FLS.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 120 size: 10846.414675 M
SUFFIX=ZNF277; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF874GPB.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF885WYC.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF173BZX.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF463MZN.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 121 size: 9710.765966 M
SUFFIX=REPIN1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF842RSK.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF685PQB.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF421SXH.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF553HLR.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 122 size: 7663.159921 M
SUFFIX=ZBTB49; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF505FEG.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF951RZS.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF520VNB.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF295MZS.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 123 size: 11829.369909 M
SUFFIX=ZNF30; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF421REI.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF203YMV.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF900JIN.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF122UDF.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 124 size: 8668.178716 M
SUFFIX=ZNF24; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF185DEL.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF652POL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF038XSJ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF725NIO.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 125 size: 8902.6689 M
SUFFIX=ZBTB1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF707MCD.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF022TFF.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF960UFT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF132YCG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 126 size: 12038.475797 M
SUFFIX=ZNF792; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF755CGW.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF726QBO.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF513LZV.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF720SPJ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 127 size: 8982.632521 M
SUFFIX=ZNF423; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF336XLE.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF268OZO.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF015NKR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF286NOT.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 128 size: 15012.506027 M
SUFFIX=HIC1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF623BWW.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF169UAL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF747KWI.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF753QHT.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 129 size: 9136.114887 M
SUFFIX=ZBTB11; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF768RZW.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF952XTB.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF779JEY.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF354KYI.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 130 size: 10688.191802 M (ERROR: REPORT)
SUFFIX=ZNF138; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF528TQX.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF858BWH.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF110HEA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF080EPR.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 131 size: 6798.934999 M
SUFFIX=ZBTB38; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF786KGC.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF655TKH.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF668IKO.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF039WDQ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 132 size: 14814.324394 M
SUFFIX=PRDM1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF691EHP.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF110KHM.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF246IMR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF861XPL.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 133 size: 10451.682663 M
SUFFIX=ZNF664; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF176BPB.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF208FLC.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF039IGX.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF593NUK.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 134 size: 13576.304182 M
SUFFIX=ZNF121; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF505LMS.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF986WDC.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF410UBV.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF495EOX.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 135 size: 9268.29564 M
SUFFIX=ZNF140; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF602URB.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF802KGS.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF306YKT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF618GBB.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 136 size: 10474.28278 M
SUFFIX=ZNF32; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF450CAZ.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF725NEH.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF129NLQ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF940OEU.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 137 size: 9564.492453 M
SUFFIX=ZNF256; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF064DIL.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF259PFD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF339RMT.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF437YVX.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 138 size: 11226.35379 M
SUFFIX=ZNF560; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF901AEL.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF390BXK.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF181KEE.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF516KHT.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 139 size: 8439.794786 M
SUFFIX=ZBTB46; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF477VQB.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF528KJS.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF486AGI.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF087FKK.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 140 size: 7382.195189 M
SUFFIX=ZNF781; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF180QIL.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF931JHV.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF835OOH.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF374YOG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 141 size: 8979.480098 M
SUFFIX=ZBTB2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF311MIZ.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF705VJS.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF658PBG.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF059PEK.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 142 size: 13193.564455 M
SUFFIX=ZNF367; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF855GFN.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF819KOA.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF135DPR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF484PXR.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 143 size: 11751.959457 M
SUFFIX=ZNF556; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF625ZES.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF228YFX.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF623BNB.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF179TKL.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 144 size: 14507.940852 M
SUFFIX=ZNF708; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF474XYX.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF223OCD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF945NQR.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF466QMA.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 145 size: 8770.757811 M
SUFFIX=ZNF202; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF083PWC.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF352QLC.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF597BCH.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF927JLA.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 146 size: 8643.347678 M
SUFFIX=ZBTB25; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF600YIT.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF537IJE.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF582JOE.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF253REO.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 147 size: 8931.675709 M
SUFFIX=ZNF639; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF664BVY.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF317VCZ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF830YAY.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF438IPE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 148 size: 6293.170718 M
SUFFIX=KLF6; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF022FYE.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF329ACI.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF336WVW.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF908AMO.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 149 size: 12155.822782 M
SUFFIX=ZNF585B; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF293QLJ.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF849AAG.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF658VPO.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF549LFN.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 150 size: 6809.166992 M
SUFFIX=ZNF354C; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF108LQS.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF647OXS.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF064VRM.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF781NWB.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 151 size: 13697.478884 M
SUFFIX=ZNF582; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF235UHD.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF773MLL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF044AHH.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF738AKI.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 152 size: 9002.039731 M
SUFFIX=OVOL3; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF070SVK.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF416FTW.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF608PZD.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF917ZPE.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 153 size: 12081.155531 M
SUFFIX=SP2; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF840CUL.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF645LBS.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF269DXT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF321HWW.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 154 size: 8921.716363 M
SUFFIX=PRDM10; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF445ZKX.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF071KJL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF764PLC.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF804SFA.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 155 size: 9079.387269 M
SUFFIX=ZNF572; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF539KJW.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF512OCQ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF329TGC.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF611WMY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 156 size: 10599.656544 M
SUFFIX=ZBTB26; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF161SSK.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF253OSH.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF219XKY.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF434TPG.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 157 size: 11732.126289 M
SUFFIX=ZNF837; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF708AQI.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF940QRR.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF413RLX.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF569ROF.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 158 size: 11983.125728 M
SUFFIX=ZFP41; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF343SQT.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF161OGL.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF203JRY.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF522WIQ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 159 size: 12050.050152 M
SUFFIX=ZNF48; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF189SGX.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF060CCV.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF355BXZ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF352ZKQ.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 160 size: 8050.877629 M
SUFFIX=GLIS1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF548XKA.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF307HHE.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF420BRV.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF946JCU.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 161 size: 7031.814549 M
SUFFIX=BCL11A; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF332WPE.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF961HCT.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF818OPZ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF571HFF.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 162 size: 10401.077865 M
SUFFIX=ZBTB7A; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF231CRO.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF649OML.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF152HSQ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF082EXH.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 163 size: 7195.855058 M
SUFFIX=ZNF594; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF761MQK.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF013ZWM.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF393EOA.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF702ZCY.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 164 size: 8720.276539 M
SUFFIX=ZNF707; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF522POF.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF210PVG.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF926PZX.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF438MFB.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 165 size: 5614.336942 M
SUFFIX=INSM1; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF594FHH.fastq.gz
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF736MFJ.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF236GEO.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF949PVN.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

# 166 size: 11511.218852 M
SUFFIX=ZNF692; WORK=/srv/gsfs0/scratch/leepc12/run/imk_chipseq/$SUFFIX; mkdir -p $WORK; cd $WORK
FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF916UAH.fastq.gz
FASTQ2_1=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF017EAR.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF988TNQ.fastq.gz
FASTQ2_2=/srv/gsfs0/scratch/leepc12/data/imk-chipseq-data/ENCFF795EIH.fastq.gz
CTL_TAG1=/srv/gsfs0/scratch/imk1/InputData/ControlAllNew.sub50Mil.tagAlign.gz
bds_scr $SUFFIX /home/leepc12/TF_chipseq_pipeline/chipseq.bds -pe -title $SUFFIX -nth 4 -macs2_for_pooled_rep_only -species hg38 -url_base http://mitra.stanford.edu/kundaje/leepc12/imk_chipseq/$SUFFIX/out -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_tag $CTL_TAG1
sleep 3

