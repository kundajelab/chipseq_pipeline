# Examples, starting from raw (unfiltered) bam and calling peaks with spp or MACS2 (for some samples)


WORK_ROOT=/srv/scratch/leepc12/grch38_eval/encodeSponge
DATA_ROOT=/mnt/data/grch38_eval/encodeSponge
CHRSZ=/mnt/data/grch38_eval/hg38.primary.genome.size
SCRIPT=/users/leepc12/code/TF_chipseq_pipeline/chipseq.bds


################################################################# /default ##########################################

# mitra (DONE)
NAME=default/wgEncodeBroadHistoneGm12878H3K27me3
BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k27me3StdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k27me3StdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878ControlStdRawDataPooled.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -no_spp

# mitra (DONE)
NAME=default/wgEncodeBroadHistoneGm12878H3K4me3
BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k4me3StdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k4me3StdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878ControlStdRawDataPooled.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -no_spp

# mitra (DONE)
NAME=default/wgEncodeBroadHistoneGm12878H3K9me3
BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k9me3StdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k9me3StdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878ControlStdRawDataPooled.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -no_spp



############ TF chipseq (default)

ADD="-no_spp"

# nandi
NAME=default/wgEncodeHaibTfbsA549NrsfV0422111Etoh02AlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsA549NrsfV0422111Etoh02RawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsA549NrsfV0422111Etoh02RawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsA549RxlchV0422111Etoh02RawDataRep1.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -wt_spp 24h $ADD

# nandi
NAME=default/wgEncodeHaibTfbsGm12892Taf1V0416102AlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsGm12892Taf1V0416102RawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsGm12892Taf1V0416102RawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsGm12892RxlchV0416102RawDataRep1.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -wt_spp 24h $ADD

# nandi
NAME=default/wgEncodeSydhTfbsGm12878Ctcfsc15914c20StdAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878Ctcfsc15914c20StdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878Ctcfsc15914c20StdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878InputRawData.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -wt_spp 24h $ADD

# nandi
NAME=default/wgEncodeSydhTfbsGm12878Rad21IggrabAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878Rad21IggrabRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878Rad21IggrabRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878InputIggrabRawDataPooled.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -wt_spp 24h $ADD

# wotan
NAME=default/wgEncodeSydhTfbsH1hescSuz12UcdAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsH1hescSuz12UcdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsH1hescSuz12UcdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsH1hescInputUcdRawData.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -wt_spp 24h $ADD

# wotan
NAME=default/wgEncodeSydhTfbsHelas3Brf2StdAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3Brf2RawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3Brf2RawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3InputRawData.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -wt_spp 24h $ADD

# wotan
NAME=default/wgEncodeSydhTfbsHelas3JundIggrabAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3JundRabiggRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3JundRabiggRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3RabiggRawDataRep1.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "_" -wt_spp 24h $ADD




################################################################# /sponge ##########################################

############ histone chipseq (sponge)

# mitra (DONE)
NAME=sponge/wgEncodeBroadHistoneGm12878H3K27me3
BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k27me3StdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k27me3StdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878ControlStdRawDataPooled.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" -no_spp

# mitra (DONE)
NAME=sponge/wgEncodeBroadHistoneGm12878H3K4me3
BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k4me3StdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k4me3StdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878ControlStdRawDataPooled.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" -no_spp


# mitra (DONE)
NAME=sponge/wgEncodeBroadHistoneGm12878H3K9me3
BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k9me3StdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878H3k9me3StdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeBroadHistoneGm12878ControlStdRawDataPooled.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" 3 -no_spp

############ TF chipseq (sponge)

# wotan
NAME=sponge/wgEncodeHaibTfbsA549NrsfV0422111Etoh02AlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsA549NrsfV0422111Etoh02RawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsA549NrsfV0422111Etoh02RawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsA549RxlchV0422111Etoh02RawDataRep1.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" -wt_spp 24h $ADD

# wotan
NAME=sponge/wgEncodeHaibTfbsGm12892Taf1V0416102AlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsGm12892Taf1V0416102RawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsGm12892Taf1V0416102RawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeHaibTfbsGm12892RxlchV0416102RawDataRep1.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" -wt_spp 24h $ADD

# wotan
NAME=sponge/wgEncodeSydhTfbsGm12878Ctcfsc15914c20StdAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878Ctcfsc15914c20StdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878Ctcfsc15914c20StdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878InputRawData.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" -wt_spp 24h $ADD

# durga
NAME=sponge/wgEncodeSydhTfbsGm12878Rad21IggrabAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878Rad21IggrabRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878Rad21IggrabRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsGm12878InputIggrabRawDataPooled.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" -wt_spp 24h $ADD

# durga
NAME=sponge/wgEncodeSydhTfbsH1hescSuz12UcdAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsH1hescSuz12UcdRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsH1hescSuz12UcdRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsH1hescInputUcdRawData.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" -wt_spp 24h $ADD

# durga
NAME=sponge/wgEncodeSydhTfbsHelas3Brf2StdAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3Brf2RawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3Brf2RawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3InputRawData.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" -wt_spp 24h $ADD

# durga
NAME=sponge/wgEncodeSydhTfbsHelas3JundIggrabAlnRep0
BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3JundRabiggRawDataRep1.bam
BAM2=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3JundRabiggRawDataRep2.bam
CTL_BAM1=${DATA_ROOT}/$NAME/wgEncodeSydhTfbsHelas3RabiggRawDataRep1.bam
mkdir -p ${WORK_ROOT}/$NAME; cd ${WORK_ROOT}/$NAME; bds $SCRIPT -bam1 $BAM1 -bam2 $BAM2 -ctl_bam1 ${CTL_BAM1} -chrsz $CHRSZ -rm_chr_from_tag "other|ribo|mito|_" -wt_spp 24h $ADD

