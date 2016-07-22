#1 , 3029328166, order: 3, svr: scg, old #: 38
NTH=6; SUFFIX="CHIPseq.ATF2.GM12878.EXPID_ENCSR000BQK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF2.GM12878.EXPID_ENCSR000BQK.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NSG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF2.GM12878.EXPID_ENCSR000BQK.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NSE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#2 , 3001020425, order: 3, svr: scg, old #: 42
NTH=12; SUFFIX="CHIPseq.ATF2.H1-hESC.EXPID_ENCSR000BQU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF2.H1-hESC.EXPID_ENCSR000BQU.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OMY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF2.H1-hESC.EXPID_ENCSR000BQU.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OMR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#3 , 3788075584, order: 4, svr: scg, old #: 12
NTH=7; SUFFIX="CHIPseq.CREB1.K562.EXPID_ENCSR000BSO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CREB1.K562.EXPID_ENCSR000BSO.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PYC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CREB1.K562.EXPID_ENCSR000BSO.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PXY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#4 , 3515603354, order: 4, svr: scg, old #: 14
NTH=7; SUFFIX="CHIPseq.CREB1.HepG2.EXPID_ENCSR000BVL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CREB1.HepG2.EXPID_ENCSR000BVL.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PGZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CREB1.HepG2.EXPID_ENCSR000BVL.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PGX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#5 , 3356225874, order: 4, svr: scg, old #: 23
NTH=6; SUFFIX="CHIPseq.CREB1.H1-hESC.EXPID_ENCSR000BSN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CREB1.H1-hESC.EXPID_ENCSR000BSN.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000ONP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CREB1.H1-hESC.EXPID_ENCSR000BSN.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000ONS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#6 , 2763165890, order: 4, svr: scg, old #: 57
NTH=5; SUFFIX="CHIPseq.CREB1.GM12878.EXPID_ENCSR000BUF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CREB1.GM12878.EXPID_ENCSR000BUF.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NUL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CREB1.GM12878.EXPID_ENCSR000BUF.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NUK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#7 , 3031926935, order: 6, svr: scg, old #: 37
NTH=6; SUFFIX="CHIPseq.EGR1.MCF-7.EXPID_ENCSR000BUX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.MCF-7.EXPID_ENCSR000BUX.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QMF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.MCF-7.EXPID_ENCSR000BUX.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QMC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#8 , 2378948392, order: 6, svr: scg, old #: 91
NTH=4; SUFFIX="CHIPseq.EGR1.HCT116.EXPID_ENCSR000BRZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.HCT116.EXPID_ENCSR000BRZ.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000OZL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.HCT116.EXPID_ENCSR000BRZ.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000OZI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#9 , 2175239415, order: 6, svr: scg, old #: 115
NTH=4; SUFFIX="CHIPseq.EGR1.K562.EXPID_ENCSR000BNE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.K562.EXPID_ENCSR000BNE.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PZP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.K562.EXPID_ENCSR000BNE.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PZK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#10 , 1945016423, order: 6, svr: scg, old #: 154
NTH=3; SUFFIX="CHIPseq.EGR1.GM12878.EXPID_ENCSR000BMQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.GM12878.EXPID_ENCSR000BMQ.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NVF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.GM12878.EXPID_ENCSR000BMQ.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NVC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#11 , 4082233956, order: 7, svr: scg, old #: 8
NTH=8; SUFFIX="CHIPseq.TCF12.SK-N-SH.EXPID_ENCSR000BSL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.SK-N-SH.EXPID_ENCSR000BSL.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000REF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.SK-N-SH.EXPID_ENCSR000BSL.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000REA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#12 , 3050211475, order: 7, svr: scg, old #: 35
NTH=6; SUFFIX="CHIPseq.TCF12.MCF-7.EXPID_ENCSR000BUN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.MCF-7.EXPID_ENCSR000BUN.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QRV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.MCF-7.EXPID_ENCSR000BUN.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QRU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#13 , 2336134430, order: 7, svr: scg, old #: 98
NTH=4; SUFFIX="CHIPseq.TCF12.HepG2.EXPID_ENCSR000BJG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.HepG2.EXPID_ENCSR000BJG.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PRL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.HepG2.EXPID_ENCSR000BJG.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PRJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#14 , 1860613653, order: 7, svr: scg, old #: 171
NTH=3; SUFFIX="CHIPseq.TCF12.GM12878.EXPID_ENCSR000BGZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.GM12878.EXPID_ENCSR000BGZ.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OGQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.GM12878.EXPID_ENCSR000BGZ.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OGN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#15 , 2705417779, order: 8, svr: scg, old #: 60
NTH=5; SUFFIX="CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVE.BSID_ENCBS500SDW.BSREP2.TECHREP1.FILEIDENCFF000XMN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVE.BSID_ENCBS500SDW.BSREP1.TECHREP1.FILEIDENCFF000XML.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#16 , 2096290597, order: 8, svr: scg, old #: 129
NTH=4; SUFFIX="CHIPseq.TCF7L2.HEK293.EXPID_ENCSR000EUY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HEK293.EXPID_ENCSR000EUY.BSID_ENCBS479AAA.BSREP1.TECHREP1.FILEIDENCFF000WYK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HEK293.EXPID_ENCSR000EUY.BSID_ENCBS479AAA.BSREP2.TECHREP1.FILEIDENCFF000WYN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HEK293.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HEK293/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HEK293/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#17 , 1979604643, order: 8, svr: scg, old #: 146
NTH=3; SUFFIX="CHIPseq.TCF7L2.MCF-7.EXPID_ENCSR000EWT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.MCF-7.EXPID_ENCSR000EWT.BSID_ENCBS105ENC.BSREP2.TECHREP1.FILEIDENCFF000ZLM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.MCF-7.EXPID_ENCSR000EWT.BSID_ENCBS105ENC.BSREP1.TECHREP1.FILEIDENCFF000ZLK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#18 , 1948301642, order: 8, svr: scg, old #: 153
NTH=3; SUFFIX="CHIPseq.TCF7L2.HepG2.EXPID_ENCSR000EVQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HepG2.EXPID_ENCSR000EVQ.BSID_ENCBS950MSQ.BSREP1.TECHREP1.FILEIDENCFF000XYV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HepG2.EXPID_ENCSR000EVQ.BSID_ENCBS950MSQ.BSREP2.TECHREP1.FILEIDENCFF000XYX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#19 , 1115417311, order: 8, svr: scg, old #: 246
NTH=20; SUFFIX="CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVF.BSID_ENCBS500SDW.BSREP1.TECHREP1.FILEIDENCFF000XMD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVF.BSID_ENCBS500SDW.BSREP2.TECHREP1.FILEIDENCFF000XMF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#20 , 2860865649, order: 10, svr: scg, old #: 51
NTH=5; SUFFIX="CHIPseq.FOXA2.HepG2.EXPID_ENCSR000BNI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOXA2.HepG2.EXPID_ENCSR000BNI.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PIX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOXA2.HepG2.EXPID_ENCSR000BNI.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PIT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#21 , 1063787657, order: 11, svr: scg, old #: 249
NTH=3; SUFFIX="CHIPseq.HNF4A.HepG2.EXPID_ENCSR000BLF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.HNF4A.HepG2.EXPID_ENCSR000BLF.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PJX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.HNF4A.HepG2.EXPID_ENCSR000BLF.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PJT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 20000000 
##SUBSAMPLED CTL (20M)!
sleep 5

#22 , 980290758, order: 12, svr: scg, old #: 253
NTH=20; SUFFIX="CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BMO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BMO.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PIB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BMO.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PHY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#23 , 4024463809, order: 13, svr: scg, old #: 10
NTH=8; SUFFIX="CHIPseq.TAF1.MCF-7.EXPID_ENCSR000AHF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.MCF-7.EXPID_ENCSR000AHF.BSID_ENCBS000AAA.BSREP1.TECHREP1.FILEIDENCFF000QRS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.MCF-7.EXPID_ENCSR000AHF.BSID_ENCBS001AAA.BSREP2.TECHREP1.FILEIDENCFF000QRL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#24 , 2960372979, order: 13, svr: scg, old #: 46
NTH=5; SUFFIX="CHIPseq.TAF1.SK-N-SH.EXPID_ENCSR000BQF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.SK-N-SH.EXPID_ENCSR000BQF.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RDS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.SK-N-SH.EXPID_ENCSR000BQF.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RDR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#25 , 2445217858, order: 13, svr: scg, old #: 81
NTH=4; SUFFIX="CHIPseq.TAF1.GM12891.EXPID_ENCSR000BIM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12891.EXPID_ENCSR000BIM.BSID_ENCBS388ENC.BSREP1.TECHREP1.FILEIDENCFF000OKG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12891.EXPID_ENCSR000BIM.BSID_ENCBS388ENC.BSREP2.TECHREP1.FILEIDENCFF000OKD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12891.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12891/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12891/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#26 , 2432950687, order: 13, svr: scg, old #: 83
NTH=4; SUFFIX="CHIPseq.TAF1.HeLa-S3.EXPID_ENCSR000BHT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.HeLa-S3.EXPID_ENCSR000BHT.BSID_ENCBS113ENC.BSREP1.TECHREP1.FILEIDENCFF000PFL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.HeLa-S3.EXPID_ENCSR000BHT.BSID_ENCBS113ENC.BSREP2.TECHREP1.FILEIDENCFF000PFJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#27 , 2420566328, order: 13, svr: scg, old #: 85
NTH=4; SUFFIX="CHIPseq.TAF1.HepG2.EXPID_ENCSR000BJN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.HepG2.EXPID_ENCSR000BJN.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PRD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.HepG2.EXPID_ENCSR000BJN.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PRB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#28 , 2263206380, order: 13, svr: scg, old #: 104
NTH=4; SUFFIX="CHIPseq.TAF1.GM12892.EXPID_ENCSR000BIB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12892.EXPID_ENCSR000BIB.BSID_ENCBS055ENC.BSREP1.TECHREP1.FILEIDENCFF000OMD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12892.EXPID_ENCSR000BIB.BSID_ENCBS055ENC.BSREP2.TECHREP1.FILEIDENCFF000OLZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12892.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12892/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12892/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#29 , 1775963148, order: 13, svr: scg, old #: 185
NTH=3; SUFFIX="CHIPseq.TAF1.GM12878.EXPID_ENCSR000BGS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12878.EXPID_ENCSR000BGS.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OGH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12878.EXPID_ENCSR000BGS.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OGC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#30 , 3475812444, order: 14, svr: scg, old #: 16
NTH=6; SUFFIX="CHIPseq.GABPA.SK-N-SH.EXPID_ENCSR000BTG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.SK-N-SH.EXPID_ENCSR000BTG.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QYW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.SK-N-SH.EXPID_ENCSR000BTG.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QYP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#31 , 3277944844, order: 14, svr: scg, old #: 27
NTH=6; SUFFIX="CHIPseq.GABPA.MCF-7.EXPID_ENCSR000BUK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.MCF-7.EXPID_ENCSR000BUK.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QNK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.MCF-7.EXPID_ENCSR000BUK.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QNJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#32 , 3081693799, order: 14, svr: scg, old #: 33
NTH=6; SUFFIX="CHIPseq.GABPA.HepG2.EXPID_ENCSR000BJK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.HepG2.EXPID_ENCSR000BJK.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PJF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.HepG2.EXPID_ENCSR000BJK.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PJC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#33 , 2651282313, order: 14, svr: scg, old #: 65
NTH=5; SUFFIX="CHIPseq.GABPA.HeLa-S3.EXPID_ENCSR000BHS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.HeLa-S3.EXPID_ENCSR000BHS.BSID_ENCBS113ENC.BSREP2.TECHREP1.FILEIDENCFF000PEK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.HeLa-S3.EXPID_ENCSR000BHS.BSID_ENCBS113ENC.BSREP1.TECHREP1.FILEIDENCFF000PEH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#34 , 2523479647, order: 14, svr: scg, old #: 74
NTH=5; SUFFIX="CHIPseq.GABPA.HL-60.EXPID_ENCSR000BTK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.HL-60.EXPID_ENCSR000BTK.BSID_ENCBS070ENC.BSREP1.TECHREP1.FILEIDENCFF000PTV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.HL-60.EXPID_ENCSR000BTK.BSID_ENCBS070ENC.BSREP2.TECHREP1.FILEIDENCFF000PTU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HL-60.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HL-60/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HL-60/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#35 , 2442710718, order: 14, svr: scg, old #: 82
NTH=4; SUFFIX="CHIPseq.GABPA.GM12878.EXPID_ENCSR000BGC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.GM12878.EXPID_ENCSR000BGC.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NWM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.GM12878.EXPID_ENCSR000BGC.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NWN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#36 , 3011601864, order: 15, svr: scg, old #: 40
NTH=6; SUFFIX="CHIPseq.CEBPB.A549.EXPID_ENCSR000BUB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.A549.EXPID_ENCSR000BUB.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000MXK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.A549.EXPID_ENCSR000BUB.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000MXH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#37 , 2863350953, order: 15, svr: scg, old #: 50
NTH=5; SUFFIX="CHIPseq.CEBPB.HCT116.EXPID_ENCSR000BSD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.HCT116.EXPID_ENCSR000BSD.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000OYU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.HCT116.EXPID_ENCSR000BSD.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000OYS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#38 , 2604175371, order: 15, svr: scg, old #: 67
NTH=5; SUFFIX="CHIPseq.CEBPB.MCF-7.EXPID_ENCSR000BSR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.MCF-7.EXPID_ENCSR000BSR.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QLO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.MCF-7.EXPID_ENCSR000BSR.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QLL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#39 , 2512709958, order: 15, svr: scg, old #: 76
NTH=5; SUFFIX="CHIPseq.CEBPB.GM12878.EXPID_ENCSR000BRX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.GM12878.EXPID_ENCSR000BRX.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NUD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.GM12878.EXPID_ENCSR000BRX.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NUB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#40 , 1902788434, order: 15, svr: scg, old #: 160
NTH=3; SUFFIX="CHIPseq.CEBPB.A549.EXPID_ENCSR000DYI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.A549.EXPID_ENCSR000DYI.BSID_ENCBS159AAA.BSREP1.TECHREP1.FILEIDENCFF000VOL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.A549.EXPID_ENCSR000DYI.BSID_ENCBS159AAA.BSREP2.TECHREP1.FILEIDENCFF000VON.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#41 , 1846953227, order: 15, svr: scg, old #: 173
NTH=10; SUFFIX="CHIPseq.CEBPB.K562.EXPID_ENCSR000BRQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR000BRQ.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PXH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR000BRQ.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PXC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#42 , 1842798337, order: 15, svr: scg, old #: 176
NTH=3; SUFFIX="CHIPseq.CEBPB.K562.EXPID_ENCSR000EHE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR000EHE.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YIC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR000EHE.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YID.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#43 , 1840065916, order: 15, svr: scg, old #: 177
NTH=3; SUFFIX="CHIPseq.CEBPB.H1-hESC.EXPID_ENCSR000EBV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.H1-hESC.EXPID_ENCSR000EBV.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WRB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.H1-hESC.EXPID_ENCSR000EBV.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WRD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#44 , 1747602752, order: 15, svr: scg, old #: 188
NTH=3; SUFFIX="CHIPseq.CEBPB.HeLa-S3.EXPID_ENCSR000EDA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.HeLa-S3.EXPID_ENCSR000EDA.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XBO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.HeLa-S3.EXPID_ENCSR000EDA.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XBN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#45 , 5217533603, order: 16, svr: scg, old #: 1
NTH=10; SUFFIX="CHIPseq.REST.Panc1.EXPID_ENCSR000BJO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BJO.BSID_ENCBS425ENC.BSREP2.TECHREP1.FILEIDENCFF000QST.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BJO.BSID_ENCBS425ENC.BSREP1.TECHREP1.FILEIDENCFF000QSN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#46 , 4291140408, order: 16, svr: scg, old #: 5
NTH=8; SUFFIX="CHIPseq.REST.HL-60.EXPID_ENCSR000BTF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HL-60.EXPID_ENCSR000BTF.BSID_ENCBS070ENC.BSREP2.TECHREP1.FILEIDENCFF000PUO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HL-60.EXPID_ENCSR000BTF.BSID_ENCBS070ENC.BSREP1.TECHREP1.FILEIDENCFF000PUD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HL-60.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HL-60/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HL-60/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#47 , 3379815904, order: 16, svr: scg, old #: 21
NTH=6; SUFFIX="CHIPseq.REST.GM12878.EXPID_ENCSR000BGF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.GM12878.EXPID_ENCSR000BGF.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NZA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.GM12878.EXPID_ENCSR000BGF.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NYY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#48 , 3379734432, order: 16, svr: scg, old #: 22
NTH=6; SUFFIX="CHIPseq.REST.HepG2.EXPID_ENCSR000BJL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HepG2.EXPID_ENCSR000BJL.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PMN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HepG2.EXPID_ENCSR000BJL.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PMK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#49 , 2996888716, order: 16, svr: scg, old #: 43
NTH=5; SUFFIX="CHIPseq.REST.MCF-7.EXPID_ENCSR000BSP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.MCF-7.EXPID_ENCSR000BSP.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QPH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.MCF-7.EXPID_ENCSR000BSP.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QPE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#50 , 2785346920, order: 16, svr: scg, old #: 55
NTH=5; SUFFIX="CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BJJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BJJ.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RAO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BJJ.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RAL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#51 , 2695678500, order: 16, svr: scg, old #: 61
NTH=5; SUFFIX="CHIPseq.REST.HCT116.EXPID_ENCSR000BVI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HCT116.EXPID_ENCSR000BVI.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PAW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HCT116.EXPID_ENCSR000BVI.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PAX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#52 , 2660592200, order: 16, svr: scg, old #: 64
NTH=5; SUFFIX="CHIPseq.REST.HepG2.EXPID_ENCSR000BOT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HepG2.EXPID_ENCSR000BOT.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PMV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HepG2.EXPID_ENCSR000BOT.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PMU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#53 , 2367885518, order: 16, svr: scg, old #: 93
NTH=4; SUFFIX="CHIPseq.REST.H1-hESC.EXPID_ENCSR000BHM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.H1-hESC.EXPID_ENCSR000BHM.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OQY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.H1-hESC.EXPID_ENCSR000BHM.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OQQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#54 , 2137110021, order: 16, svr: scg, old #: 119
NTH=4; SUFFIX="CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BOZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BOZ.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RAW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BOZ.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RAT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#55 , 1965762041, order: 16, svr: scg, old #: 148
NTH=3; SUFFIX="CHIPseq.REST.Panc1.EXPID_ENCSR000BUP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BUP.BSID_ENCBS425ENC.BSREP2.TECHREP1.FILEIDENCFF000QTD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BUP.BSID_ENCBS425ENC.BSREP1.TECHREP1.FILEIDENCFF000QTA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#56 , 1948675408, order: 16, svr: scg, old #: 152
NTH=3; SUFFIX="CHIPseq.REST.HeLa-S3.EXPID_ENCSR000BMN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HeLa-S3.EXPID_ENCSR000BMN.BSID_ENCBS113ENC.BSREP1.TECHREP1.FILEIDENCFF000PEQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HeLa-S3.EXPID_ENCSR000BMN.BSID_ENCBS113ENC.BSREP2.TECHREP1.FILEIDENCFF000PEM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#57 , 1902737624, order: 16, svr: scg, old #: 161
NTH=15; SUFFIX="CHIPseq.REST.K562.EXPID_ENCSR000BMW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.K562.EXPID_ENCSR000BMW.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QCX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.K562.EXPID_ENCSR000BMW.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QCW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#58 , 3577006545, order: 17, svr: scg, old #: 13
NTH=7; SUFFIX="CHIPseq.MAX.HepG2.EXPID_ENCSR000BTM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HepG2.EXPID_ENCSR000BTM.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PKZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HepG2.EXPID_ENCSR000BTM.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PKX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#59 , 3413829269, order: 17, svr: scg, old #: 20
NTH=6; SUFFIX="CHIPseq.MAX.A549.EXPID_ENCSR000BTJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.A549.EXPID_ENCSR000BTJ.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000NDT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.A549.EXPID_ENCSR000BTJ.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000NDP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#60 , 3281945458, order: 17, svr: scg, old #: 26
NTH=6; SUFFIX="CHIPseq.MAX.HCT116.EXPID_ENCSR000BSH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HCT116.EXPID_ENCSR000BSH.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PAQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HCT116.EXPID_ENCSR000BSH.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PAP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

########### scg3 (QLOGIN)

#61 , 3096155876, order: 17, svr: scg, old #: 32
NTH=6; SUFFIX="CHIPseq.MAX.H1-hESC.EXPID_ENCSR000BSJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.H1-hESC.EXPID_ENCSR000BSJ.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OQD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.H1-hESC.EXPID_ENCSR000BSJ.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OQI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#62 , 2984564336, order: 17, svr: scg, old #: 44
NTH=5; SUFFIX="CHIPseq.MAX.MCF-7.EXPID_ENCSR000BUL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.MCF-7.EXPID_ENCSR000BUL.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QOS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.MCF-7.EXPID_ENCSR000BUL.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QON.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#63 , 2742356844, order: 17, svr: scg, old #: 58
NTH=5; SUFFIX="CHIPseq.MAX.SK-N-SH.EXPID_ENCSR000BVD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.SK-N-SH.EXPID_ENCSR000BVD.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QZQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.SK-N-SH.EXPID_ENCSR000BVD.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QZN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#64 , 2359401285, order: 17, svr: scg, old #: 95
NTH=4; SUFFIX="CHIPseq.MAX.NB4.EXPID_ENCSR000EHS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.NB4.EXPID_ENCSR000EHS.BSID_ENCBS259AAA.BSREP2.TECHREP1.FILEIDENCFF000ZMP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.NB4.EXPID_ENCSR000EHS.BSID_ENCBS259AAA.BSREP1.TECHREP1.FILEIDENCFF000ZMN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.NB4.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.NB4/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.NB4/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#65 , 2191587951, order: 17, svr: scg, old #: 110
NTH=4; SUFFIX="CHIPseq.MAX.A549.EXPID_ENCSR000DYG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.A549.EXPID_ENCSR000DYG.BSID_ENCBS159AAA.BSREP1.TECHREP1.FILEIDENCFF000VPS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.A549.EXPID_ENCSR000DYG.BSID_ENCBS159AAA.BSREP2.TECHREP1.FILEIDENCFF000VPU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#66 , 2080172525, order: 17, svr: scg, old #: 134
NTH=4; SUFFIX="CHIPseq.MAX.K562.EXPID_ENCSR000BLP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000BLP.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QCC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000BLP.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QBZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#67 , 1890241158, order: 17, svr: scg, old #: 165
NTH=3; SUFFIX="CHIPseq.MAX.GM12878.EXPID_ENCSR000DZF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.GM12878.EXPID_ENCSR000DZF.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VYA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.GM12878.EXPID_ENCSR000DZF.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VXY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#68 , 1762383064, order: 17, svr: scg, old #: 186
NTH=3; SUFFIX="CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000ECN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000ECN.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XHD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000ECN.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XHF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#69 , 4447348119, order: 18, svr: scg, old #: 3
NTH=8; SUFFIX="CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000BNH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000BNH.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OOF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000BNH.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000ONR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#70 , 3252094990, order: 18, svr: scg, old #: 28
NTH=6; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000AHD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000AHD.BSID_ENCBS000AAA.BSREP1.TECHREP1.FILEIDENCFF000QLW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000AHD.BSID_ENCBS001AAA.BSREP2.TECHREP1.FILEIDENCFF000QLT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#71 , 2679120397, order: 18, svr: scg, old #: 62
NTH=5; SUFFIX="CHIPseq.CTCF.A549.EXPID_ENCSR000DNA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DNA.BSID_ENCBS162AAA.BSREP2.TECHREP1.FILEIDENCFF000RMC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DNA.BSID_ENCBS162AAA.BSREP1.TECHREP1.FILEIDENCFF000RMB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#72 , 2561792780, order: 18, svr: scg, old #: 71
NTH=5; SUFFIX="CHIPseq.CTCF.HepG2.EXPID_ENCSR000BIE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000BIE.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PHG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000BIE.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PHE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#73 , 2525048883, order: 18, svr: scg, old #: 73
NTH=5; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMR.BSID_ENCBS017ENC.BSREP1.TECHREP1.FILEIDENCFF000SAY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMR.BSID_ENCBS017ENC.BSREP2.TECHREP1.FILEIDENCFF000SAX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#74 , 2483146438, order: 18, svr: scg, old #: 78
NTH=4; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DML"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DML.BSID_ENCBS251AAA.BSREP2.TECHREP1.FILEIDENCFF000SAP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DML.BSID_ENCBS251AAA.BSREP1.TECHREP1.FILEIDENCFF000SAO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#75 , 2457028026, order: 18, svr: scg, old #: 80
NTH=4; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000EGM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000EGM.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YLW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000EGM.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YLY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#76 , 2423703449, order: 18, svr: scg, old #: 84
NTH=4; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMO.BSID_ENCBS252AAA.BSREP2.TECHREP1.FILEIDENCFF000SAL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMO.BSID_ENCBS252AAA.BSREP1.TECHREP1.FILEIDENCFF000SAK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

# in CTCF_blacklist.txt
#77 , 2370598870, order: 18, svr: scg, old #: 92
#NTH=4; SUFFIX="CHIPseq.CTCF.HEK293.EXPID_ENCSR000DTW"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HEK293.EXPID_ENCSR000DTW.BSID_ENCBS393ENC.BSREP1.TECHREP1.FILEIDENCFF001HNG.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HEK293.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HEK293/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HEK293/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#sleep 5

#78 , 2220479962, order: 18, svr: scg, old #: 107
NTH=4; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DWH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DWH.BSID_ENCBS241AAA.BSREP2.TECHREP1.FILEIDENCFF001HUF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DWH.BSID_ENCBS748WRO.BSREP1.TECHREP1.FILEIDENCFF001HUG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#79 , 2177604154, order: 18, svr: scg, old #: 113
NTH=4; SUFFIX="CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DVA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DVA.BSID_ENCBS323AAA.BSREP2.TECHREP1.FILEIDENCFF001HQZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DVA.BSID_ENCBS024DYT.BSREP1.TECHREP1.FILEIDENCFF001HRA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_lung.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.fibroblast_of_lung/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.fibroblast_of_lung/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#80 , 2175438224, order: 18, svr: scg, old #: 114
NTH=4; SUFFIX="CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000AOA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000AOA.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000BAS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000AOA.BSID_ENCBS637AAA.BSREP1.TECHREP2.FILEIDENCFF000BAT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#81 , 2110179403, order: 18, svr: scg, old #: 126
NTH=12; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000DWE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DWE.BSID_ENCBS698AAA.BSREP1.TECHREP1.FILEIDENCFF001HTO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DWE.BSID_ENCBS698AAA.BSREP2.TECHREP1.FILEIDENCFF001HTP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#82 , 2046701933, order: 18, svr: scg, old #: 139
NTH=10; SUFFIX="CHIPseq.CTCF.osteoblast.EXPID_ENCSR000APF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.osteoblast.EXPID_ENCSR000APF.BSID_ENCBS341AAA.BSREP1.TECHREP2.FILEIDENCFF000CVF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.osteoblast.EXPID_ENCSR000APF.BSID_ENCBS341AAA.BSREP1.TECHREP1.FILEIDENCFF000CVG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.osteoblast.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.osteoblast/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.osteoblast/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#83 , 2037593145, order: 18, svr: scg, old #: 140
NTH=4; SUFFIX="CHIPseq.CTCF.mammary_epithelial_cell.EXPID_ENCSR000DUS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.mammary_epithelial_cell.EXPID_ENCSR000DUS.BSID_ENCBS090ENC.BSREP1.TECHREP1.FILEIDENCFF001HPM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.mammary_epithelial_cell.EXPID_ENCSR000DUS.BSID_ENCBS090ENC.BSREP2.TECHREP1.FILEIDENCFF001HPL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.mammary_epithelial_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.mammary_epithelial_cell/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.mammary_epithelial_cell/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#84 , 1963797453, order: 18, svr: scg, old #: 149
NTH=3; SUFFIX="CHIPseq.CTCF.A549.EXPID_ENCSR000DYD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DYD.BSID_ENCBS159AAA.BSREP1.TECHREP1.FILEIDENCFF000VPD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DYD.BSID_ENCBS159AAA.BSREP2.TECHREP1.FILEIDENCFF000VPF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#85 , 1893867104, order: 18, svr: scg, old #: 164
NTH=3; SUFFIX="CHIPseq.CTCF.HepG2.EXPID_ENCSR000DUG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000DUG.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF001HNU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000DUG.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF001HNT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

########### HERE macs2

#86 , 1871015677, order: 18, svr: scg, old #: 167
NTH=10; SUFFIX="CHIPseq.CTCF.epithelial_cell_of_proximal_tubule.EXPID_ENCSR000DXD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.epithelial_cell_of_proximal_tubule.EXPID_ENCSR000DXD.BSID_ENCBS166KRI.BSREP1.TECHREP1.FILEIDENCFF001HWL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.epithelial_cell_of_proximal_tubule.EXPID_ENCSR000DXD.BSID_ENCBS402ENC.BSREP2.TECHREP1.FILEIDENCFF001HWU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.epithelial_cell_of_proximal_tubule.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.epithelial_cell_of_proximal_tubule/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.epithelial_cell_of_proximal_tubule/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#87 , 1863284303, order: 18, svr: scg, old #: 169
NTH=3; SUFFIX="CHIPseq.CTCF.GM12878.EXPID_ENCSR000AKB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000AKB.BSID_ENCBS830CIQ.BSREP1.TECHREP2.FILEIDENCFF000ARP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000AKB.BSID_ENCBS830CIQ.BSREP1.TECHREP1.FILEIDENCFF000ARV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#88 , 1854105913, order: 18, svr: scg, old #: 172
NTH=3; SUFFIX="CHIPseq.CTCF.Ishikawa.EXPID_ENCSR000BQE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.Ishikawa.EXPID_ENCSR000BQE.BSID_ENCBS312UTV.BSREP2.TECHREP1.FILEIDENCFF000NKZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.Ishikawa.EXPID_ENCSR000BQE.BSID_ENCBS312UTV.BSREP1.TECHREP1.FILEIDENCFF000NKT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Ishikawa.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Ishikawa/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Ishikawa/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#89 , 1817604389, order: 18, svr: scg, old #: 178
NTH=3; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000BPJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000BPJ.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PYJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000BPJ.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PYD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 20000000 
##SUBSAMPLED CTL (20M)!
sleep 5

#90 , 1805005360, order: 18, svr: scg, old #: 179
NTH=3; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMV.BSID_ENCBS252AAA.BSREP2.TECHREP1.FILEIDENCFF000RZY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMV.BSID_ENCBS252AAA.BSREP1.TECHREP1.FILEIDENCFF000RZX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#91 , 1776372079, order: 18, svr: scg, old #: 184
NTH=10; SUFFIX="CHIPseq.CTCF.GM12878.EXPID_ENCSR000DKV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DKV.BSID_ENCBS337LQM.BSREP2.TECHREP1.FILEIDENCFF000ROZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DKV.BSID_ENCBS337LQM.BSREP3.TECHREP1.FILEIDENCFF000ROX.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DKV.BSID_ENCBS337LQM.BSREP1.TECHREP1.FILEIDENCFF000ROU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#92 , 1758110758, order: 18, svr: scg, old #: 187
NTH=3; SUFFIX="CHIPseq.CTCF.IMR-90.EXPID_ENCSR000EFI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.IMR-90.EXPID_ENCSR000EFI.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YCK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.IMR-90.EXPID_ENCSR000EFI.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YCM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#93 , 1183732428, order: 18, svr: scg, old #: 240
NTH=2; SUFFIX="CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DNC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DNC.BSID_ENCBS611ENC.BSREP1.TECHREP1.FILEIDENCFF000SCQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DNC.BSID_ENCBS611ENC.BSREP2.TECHREP1.FILEIDENCFF000SCV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.keratinocyte.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.keratinocyte/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.keratinocyte/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#94 , 1182896319, order: 18, svr: scg, old #: 241
NTH=2; SUFFIX="CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DWX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DWX.BSID_ENCBS591ENC.BSREP2.TECHREP1.FILEIDENCFF001HVQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DWX.BSID_ENCBS591ENC.BSREP1.TECHREP1.FILEIDENCFF001HVN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.keratinocyte.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.keratinocyte/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.keratinocyte/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#95 , 1075810854, order: 18, svr: scg, old #: 247
NTH=10; SUFFIX="CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DLO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DLO.BSID_ENCBS646PGB.BSREP1.TECHREP1.FILEIDENCFF000RTA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DLO.BSID_ENCBS646PGB.BSREP2.TECHREP1.FILEIDENCFF000RTC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

######### scg4-ln02


#96 , 1053697063, order: 18, svr: scg, old #: 250
NTH=10; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000DMA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DMA.BSID_ENCBS775AAA.BSREP3.TECHREP1.FILEIDENCFF000RWO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DMA.BSID_ENCBS775AAA.BSREP1.TECHREP1.FILEIDENCFF000RWH.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DMA.BSID_ENCBS775AAA.BSREP2.TECHREP1.FILEIDENCFF000RWK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#97 , 3294060390, order: 19, svr: scg, old #: 25
NTH=10; SUFFIX="CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMM.BSID_ENCBS252AAA.BSREP1.TECHREP1.FILEIDENCFF000RZE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMM.BSID_ENCBS252AAA.BSREP2.TECHREP1.FILEIDENCFF000RZC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#98 , 2549887646, order: 19, svr: scg, old #: 72
NTH=5; SUFFIX="CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMQ.BSID_ENCBS017ENC.BSREP2.TECHREP1.FILEIDENCFF000RZV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMQ.BSID_ENCBS017ENC.BSREP1.TECHREP1.FILEIDENCFF000RZT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#99 , 2359512926, order: 19, svr: scg, old #: 94
NTH=4; SUFFIX="CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMJ.BSID_ENCBS251AAA.BSREP2.TECHREP1.FILEIDENCFF000RZL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMJ.BSID_ENCBS251AAA.BSREP1.TECHREP1.FILEIDENCFF000RZJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#100 , 2301079791, order: 19, svr: scg, old #: 100
NTH=4; SUFFIX="CHIPseq.MYC.NB4.EXPID_ENCSR000EHR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.NB4.EXPID_ENCSR000EHR.BSID_ENCBS259AAA.BSREP1.TECHREP1.FILEIDENCFF000ZMK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.NB4.EXPID_ENCSR000EHR.BSID_ENCBS259AAA.BSREP2.TECHREP1.FILEIDENCFF000ZMM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.NB4.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.NB4/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.NB4/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#101 , 2276040489, order: 19, svr: scg, old #: 102
NTH=4; SUFFIX="CHIPseq.MYC.H1-hESC.EXPID_ENCSR000EBY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.H1-hESC.EXPID_ENCSR000EBY.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WSF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.H1-hESC.EXPID_ENCSR000EBY.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WSD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#102 , 1940528531, order: 19, svr: scg, old #: 156
NTH=3; SUFFIX="CHIPseq.MYC.A549.EXPID_ENCSR000DYC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.A549.EXPID_ENCSR000DYC.BSID_ENCBS159AAA.BSREP2.TECHREP1.FILEIDENCFF000VOW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.A549.EXPID_ENCSR000DYC.BSID_ENCBS159AAA.BSREP1.TECHREP1.FILEIDENCFF000VOU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#103 , 1904822609, order: 19, svr: scg, old #: 159
NTH=3; SUFFIX="CHIPseq.MYC.K562.EXPID_ENCSR000EGJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000EGJ.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YKR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000EGJ.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YKO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#104 , 1147288039, order: 19, svr: scg, old #: 243
NTH=10; SUFFIX="CHIPseq.MYC.GM12878.EXPID_ENCSR000DKU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.GM12878.EXPID_ENCSR000DKU.BSID_ENCBS337LQM.BSREP2.TECHREP1.FILEIDENCFF000ROS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.GM12878.EXPID_ENCSR000DKU.BSID_ENCBS337LQM.BSREP1.TECHREP1.FILEIDENCFF000ROK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#105 , 1131699403, order: 19, svr: scg, old #: 244
NTH=12; SUFFIX="CHIPseq.MYC.K562.EXPID_ENCSR000DLZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000DLZ.BSID_ENCBS775AAA.BSREP1.TECHREP1.FILEIDENCFF000RWD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000DLZ.BSID_ENCBS775AAA.BSREP3.TECHREP1.FILEIDENCFF000RWG.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000DLZ.BSID_ENCBS775AAA.BSREP2.TECHREP1.FILEIDENCFF000RWE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

######## DROPPED
#106 , 1064623040, order: 19, svr: scg, old #: 248
#NTH=2; SUFFIX="CHIPseq.MYC.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DLU"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DLU.BSID_ENCBS669AAA.BSREP1.TECHREP1.FILEIDENCFF000RVF.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.endothelial_cell_of_umbilical_vein/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.endothelial_cell_of_umbilical_vein/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
#sleep 5

#107 , 989459220, order: 19, svr: scg, old #: 252
NTH=10; SUFFIX="CHIPseq.MYC.HepG2.EXPID_ENCSR000DLR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.HepG2.EXPID_ENCSR000DLR.BSID_ENCBS773AAA.BSREP1.TECHREP1.FILEIDENCFF000RTY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.HepG2.EXPID_ENCSR000DLR.BSID_ENCBS773AAA.BSREP2.TECHREP1.FILEIDENCFF000RTX.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.MYC.HepG2.EXPID_ENCSR000DLR.BSID_ENCBS773AAA.BSREP3.TECHREP1.FILEIDENCFF000RTV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#108 , 2960588842, order: 20, svr: scg, old #: 45
NTH=5; SUFFIX="CHIPseq.SPI1.GM12878.EXPID_ENCSR000BGQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SPI1.GM12878.EXPID_ENCSR000BGQ.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OBU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SPI1.GM12878.EXPID_ENCSR000BGQ.BSID_ENCBS110ENC.BSREP3.TECHREP1.FILEIDENCFF000OBS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#109 , 2406126377, order: 20, svr: scg, old #: 87
NTH=4; SUFFIX="CHIPseq.SPI1.HL-60.EXPID_ENCSR000BUW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SPI1.HL-60.EXPID_ENCSR000BUW.BSID_ENCBS070ENC.BSREP1.TECHREP1.FILEIDENCFF000PUS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SPI1.HL-60.EXPID_ENCSR000BUW.BSID_ENCBS070ENC.BSREP2.TECHREP1.FILEIDENCFF000PUT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HL-60.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HL-60/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HL-60/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#110 , 2272106714, order: 20, svr: scg, old #: 103
NTH=4; SUFFIX="CHIPseq.SPI1.GM12891.EXPID_ENCSR000BIJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SPI1.GM12891.EXPID_ENCSR000BIJ.BSID_ENCBS388ENC.BSREP1.TECHREP1.FILEIDENCFF000OJM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SPI1.GM12891.EXPID_ENCSR000BIJ.BSID_ENCBS388ENC.BSREP2.TECHREP1.FILEIDENCFF000OJL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12891.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12891/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12891/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#111 , 2016610443, order: 20, svr: scg, old #: 143
NTH=4; SUFFIX="CHIPseq.SPI1.K562.EXPID_ENCSR000BGW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SPI1.K562.EXPID_ENCSR000BGW.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QED.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SPI1.K562.EXPID_ENCSR000BGW.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QEG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#112 , 4341436969, order: 21, svr: scg, old #: 4
NTH=8; SUFFIX="CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000BSK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000BSK.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QZK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000BSK.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QZG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#113 , 3484249393, order: 21, svr: scg, old #: 15
NTH=6; SUFFIX="CHIPseq.JUND.H1-hESC.EXPID_ENCSR000BKP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.H1-hESC.EXPID_ENCSR000BKP.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OPZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.H1-hESC.EXPID_ENCSR000BKP.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OPS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#114 , 3050876460, order: 21, svr: scg, old #: 34
NTH=6; SUFFIX="CHIPseq.JUND.HCT116.EXPID_ENCSR000BSA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.HCT116.EXPID_ENCSR000BSA.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PAI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.HCT116.EXPID_ENCSR000BSA.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PAH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#115 , 2883234100, order: 21, svr: scg, old #: 48
NTH=5; SUFFIX="CHIPseq.JUND.T47D.EXPID_ENCSR000BVO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.T47D.EXPID_ENCSR000BVO.BSID_ENCBS440ENC.BSREP2.TECHREP1.FILEIDENCFF000RJM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.T47D.EXPID_ENCSR000BVO.BSID_ENCBS440ENC.BSREP1.TECHREP1.FILEIDENCFF000RJG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.T47D.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.T47D/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.T47D/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#116 , 2409371138, order: 21, svr: scg, old #: 86
NTH=4; SUFFIX="CHIPseq.JUND.MCF-7.EXPID_ENCSR000BSU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.MCF-7.EXPID_ENCSR000BSU.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QOB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.MCF-7.EXPID_ENCSR000BSU.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QOD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#117 , 2388799500, order: 21, svr: scg, old #: 88
NTH=4; SUFFIX="CHIPseq.JUND.HepG2.EXPID_ENCSR000BGK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.HepG2.EXPID_ENCSR000BGK.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PKR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.HepG2.EXPID_ENCSR000BGK.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PKK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#118 , 2250855281, order: 21, svr: scg, old #: 105
NTH=4; SUFFIX="CHIPseq.JUND.K562.EXPID_ENCSR000DJX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000DJX.BSID_ENCBS770RPE.BSREP1.TECHREP1.FILEIDENCFF000ZUU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000DJX.BSID_ENCBS919IGK.BSREP3.TECHREP1.FILEIDENCFF000ZVD.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000DJX.BSID_ENCBS349TGF.BSREP2.TECHREP1.FILEIDENCFF000ZVC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#119 , 2179780996, order: 21, svr: scg, old #: 112
NTH=4; SUFFIX="CHIPseq.JUND.H1-hESC.EXPID_ENCSR000EBZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.H1-hESC.EXPID_ENCSR000EBZ.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WTH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.H1-hESC.EXPID_ENCSR000EBZ.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WTF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#120 , 2020236903, order: 21, svr: scg, old #: 141
NTH=4; SUFFIX="CHIPseq.JUND.K562.EXPID_ENCSR000EGN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000EGN.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YSE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000EGN.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YSC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#121 , 1976233513, order: 21, svr: scg, old #: 147
NTH=3; SUFFIX="CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000EIB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000EIB.BSID_ENCBS376ENC.BSREP2.TECHREP1.FILEIDENCFF000ZQY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000EIB.BSID_ENCBS376ENC.BSREP1.TECHREP1.FILEIDENCFF000ZQV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#122 , 1711194003, order: 21, svr: scg, old #: 191
NTH=3; SUFFIX="CHIPseq.JUND.HepG2.EXPID_ENCSR000EEI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.HepG2.EXPID_ENCSR000EEI.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XTR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.HepG2.EXPID_ENCSR000EEI.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XTQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#123 , 3424277628, order: 22, svr: scg, old #: 19
NTH=6; SUFFIX="CHIPseq.MAFK.K562.EXPID_ENCSR000EGX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.K562.EXPID_ENCSR000EGX.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YUE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.K562.EXPID_ENCSR000EGX.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YUC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#124 , 2770494262, order: 22, svr: scg, old #: 56
NTH=5; SUFFIX="CHIPseq.MAFK.HepG2.EXPID_ENCSR000EEB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.HepG2.EXPID_ENCSR000EEB.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XUL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.HepG2.EXPID_ENCSR000EEB.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XUK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#125 , 2231358685, order: 22, svr: scg, old #: 106
NTH=4; SUFFIX="CHIPseq.MAFK.H1-hESC.EXPID_ENCSR000EBS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.H1-hESC.EXPID_ENCSR000EBS.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WTN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.H1-hESC.EXPID_ENCSR000EBS.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WTQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#126 , 2157523373, order: 22, svr: scg, old #: 118
NTH=4; SUFFIX="CHIPseq.MAFK.HepG2.EXPID_ENCSR000EDZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.HepG2.EXPID_ENCSR000EDZ.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XUU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.HepG2.EXPID_ENCSR000EDZ.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XVK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#127 , 2105518703, order: 22, svr: scg, old #: 128
NTH=4; SUFFIX="CHIPseq.MAFK.HeLa-S3.EXPID_ENCSR000ECK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.HeLa-S3.EXPID_ENCSR000ECK.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XGV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.HeLa-S3.EXPID_ENCSR000ECK.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XGX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#128 , 2080983451, order: 22, svr: scg, old #: 133
NTH=4; SUFFIX="CHIPseq.MAFK.GM12878.EXPID_ENCSR000DYV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.GM12878.EXPID_ENCSR000DYV.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VXQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.GM12878.EXPID_ENCSR000DYV.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VXS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

############# here macs2

#129 , 1960317432, order: 22, svr: scg, old #: 150
NTH=3; SUFFIX="CHIPseq.MAFK.IMR-90.EXPID_ENCSR000EFH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.IMR-90.EXPID_ENCSR000EFH.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YCY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.IMR-90.EXPID_ENCSR000EFH.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YDA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#130 , 4034521420, order: 23, svr: scg, old #: 9
NTH=8; SUFFIX="CHIPseq.GATA3.SK-N-SH.EXPID_ENCSR000BTH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.SK-N-SH.EXPID_ENCSR000BTH.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QYZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.SK-N-SH.EXPID_ENCSR000BTH.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QZA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

########## scg4-ln04

#131 , 3175822230, order: 23, svr: scg, old #: 30
NTH=6; SUFFIX="CHIPseq.GATA3.A549.EXPID_ENCSR000BTI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.A549.EXPID_ENCSR000BTI.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000NBM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.A549.EXPID_ENCSR000BTI.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000NBH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#132 , 2786499264, order: 23, svr: scg, old #: 54
NTH=5; SUFFIX="CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWS.BSID_ENCBS105ENC.BSREP2.TECHREP1.FILEIDENCFF000ZKT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWS.BSID_ENCBS105ENC.BSREP1.TECHREP1.FILEIDENCFF000ZLE.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWS.BSID_ENCBS105ENC.BSREP2.TECHREP1.FILEIDENCFF000ZKV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#133 , 2564728974, order: 23, svr: scg, old #: 70
NTH=5; SUFFIX="CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWV.BSID_ENCBS105ENC.BSREP2.TECHREP1.FILEIDENCFF000ZKL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWV.BSID_ENCBS105ENC.BSREP1.TECHREP1.FILEIDENCFF000ZKJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#134 , 2484275830, order: 23, svr: scg, old #: 77
NTH=4; SUFFIX="CHIPseq.GATA3.MCF-7.EXPID_ENCSR000BST"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000BST.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QNS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000BST.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QNP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#135 , 3458400317, order: 24, svr: scg, old #: 17
NTH=6; SUFFIX="CHIPseq.FOSL2.SK-N-SH.EXPID_ENCSR000BVB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOSL2.SK-N-SH.EXPID_ENCSR000BVB.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QYA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOSL2.SK-N-SH.EXPID_ENCSR000BVB.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QYD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#136 , 2868789619, order: 24, svr: scg, old #: 49
NTH=5; SUFFIX="CHIPseq.FOSL2.HepG2.EXPID_ENCSR000BHP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOSL2.HepG2.EXPID_ENCSR000BHP.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PIE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOSL2.HepG2.EXPID_ENCSR000BHP.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PHU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#137 , 2630429033, order: 24, svr: scg, old #: 66
NTH=5; SUFFIX="CHIPseq.FOSL2.MCF-7.EXPID_ENCSR000BUI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOSL2.MCF-7.EXPID_ENCSR000BUI.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QMU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOSL2.MCF-7.EXPID_ENCSR000BUI.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QMS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#138 , 2672900495, order: 25, svr: scg, old #: 63
NTH=5; SUFFIX="CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BSM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BSM.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000REZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BSM.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000REX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#139 , 2108383867, order: 25, svr: scg, old #: 127
NTH=4; SUFFIX="CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BLZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BLZ.BSID_ENCBS404ENC.BSREP2.TECHREP1.FILEIDENCFF000RGY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BLZ.BSID_ENCBS404ENC.BSREP1.TECHREP1.FILEIDENCFF000RGV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#140 , 1799013989, order: 25, svr: scg, old #: 180
NTH=10; SUFFIX="CHIPseq.YY1.K562.EXPID_ENCSR000BMH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000BMH.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QKI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000BMH.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QKF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#141 , 1722677318, order: 25, svr: scg, old #: 190
NTH=3; SUFFIX="CHIPseq.YY1.HepG2.EXPID_ENCSR000BNT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.HepG2.EXPID_ENCSR000BNT.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PSE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.HepG2.EXPID_ENCSR000BNT.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PSD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#142 , 1179847008, order: 25, svr: scg, old #: 242
NTH=3; SUFFIX="CHIPseq.YY1.HCT116.EXPID_ENCSR000BNX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.HCT116.EXPID_ENCSR000BNX.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PDT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.HCT116.EXPID_ENCSR000BNX.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PDQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 20000000 
##SUBSAMPLED CTL (20M)!
sleep 5

#143 , 997049776, order: 25, svr: scg, old #: 251
NTH=3; SUFFIX="CHIPseq.YY1.K562.EXPID_ENCSR000EWF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000EWF.BSID_ENCBS667AAA.BSREP1.TECHREP1.FILEIDENCFF000ZEJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000EWF.BSID_ENCBS667AAA.BSREP2.TECHREP1.FILEIDENCFF000ZEK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 20000000 
##SUBSAMPLED CTL (20M)!
sleep 5

#144 , 2513252922, order: 26, svr: scg, old #: 75
NTH=5; SUFFIX="CHIPseq.ZNF143.K562.EXPID_ENCSR000EGP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ZNF143.K562.EXPID_ENCSR000EGP.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000ZEA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ZNF143.K562.EXPID_ENCSR000EGP.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000ZEC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#145 , 2322574076, order: 26, svr: scg, old #: 99
NTH=4; SUFFIX="CHIPseq.ZNF143.H1-hESC.EXPID_ENCSR000EBW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ZNF143.H1-hESC.EXPID_ENCSR000EBW.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WWC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ZNF143.H1-hESC.EXPID_ENCSR000EBW.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WWE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#146 , 2136277845, order: 26, svr: scg, old #: 120
NTH=4; SUFFIX="CHIPseq.ZNF143.HeLa-S3.EXPID_ENCSR000ECO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ZNF143.HeLa-S3.EXPID_ENCSR000ECO.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XNX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ZNF143.HeLa-S3.EXPID_ENCSR000ECO.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XNV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

############### HERE

#147 , 1795494714, order: 26, svr: scg, old #: 182
NTH=3; SUFFIX="CHIPseq.ZNF143.GM12878.EXPID_ENCSR000DZL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ZNF143.GM12878.EXPID_ENCSR000DZL.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WGX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ZNF143.GM12878.EXPID_ENCSR000DZL.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WGW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#148 , 3177289775, order: 27, svr: scg, old #: 29
NTH=6; SUFFIX="CHIPseq.E2F6.H1-hESC.EXPID_ENCSR000BSI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.H1-hESC.EXPID_ENCSR000BSI.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OOL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.H1-hESC.EXPID_ENCSR000BSI.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OOD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#149 , 3009587667, order: 27, svr: scg, old #: 41
NTH=6; SUFFIX="CHIPseq.E2F6.A549.EXPID_ENCSR000BTC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.A549.EXPID_ENCSR000BTC.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000MYX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.A549.EXPID_ENCSR000BTC.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000MYY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#150 , 2090274719, order: 27, svr: scg, old #: 130
NTH=4; SUFFIX="CHIPseq.E2F6.K562.EXPID_ENCSR000BLI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.K562.EXPID_ENCSR000BLI.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PYZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.K562.EXPID_ENCSR000BLI.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PYX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#151 , 1779084102, order: 27, svr: scg, old #: 183
NTH=20; SUFFIX="CHIPseq.E2F6.K562.EXPID_ENCSR000EWJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.K562.EXPID_ENCSR000EWJ.BSID_ENCBS667AAA.BSREP2.TECHREP1.FILEIDENCFF000YMU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.K562.EXPID_ENCSR000EWJ.BSID_ENCBS667AAA.BSREP1.TECHREP1.FILEIDENCFF000YNL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#152 , 946530488, order: 27, svr: scg, old #: 255
NTH=32; SUFFIX="CHIPseq.E2F6.HeLa-S3.EXPID_ENCSR000EVK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.HeLa-S3.EXPID_ENCSR000EVK.BSID_ENCBS500SDW.BSREP2.TECHREP1.FILEIDENCFF000XDX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.HeLa-S3.EXPID_ENCSR000EVK.BSID_ENCBS500SDW.BSREP1.TECHREP1.FILEIDENCFF000XDN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#153 , 2358529648, order: 28, svr: scg, old #: 96
NTH=4; SUFFIX="CHIPseq.RFX5.H1-hESC.EXPID_ENCSR000ECF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.H1-hESC.EXPID_ENCSR000ECF.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WVR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.H1-hESC.EXPID_ENCSR000ECF.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WVQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#154 , 2206910794, order: 28, svr: scg, old #: 108
NTH=4; SUFFIX="CHIPseq.RFX5.IMR-90.EXPID_ENCSR000EFD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.IMR-90.EXPID_ENCSR000EFD.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YEO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.IMR-90.EXPID_ENCSR000EFD.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YEM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#155 , 2198023643, order: 28, svr: scg, old #: 109
NTH=4; SUFFIX="CHIPseq.RFX5.HeLa-S3.EXPID_ENCSR000ECX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.HeLa-S3.EXPID_ENCSR000ECX.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XKU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.HeLa-S3.EXPID_ENCSR000ECX.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XKT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#156 , 2172816756, order: 28, svr: scg, old #: 116
NTH=4; SUFFIX="CHIPseq.RFX5.SK-N-SH.EXPID_ENCSR000EHY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.SK-N-SH.EXPID_ENCSR000EHY.BSID_ENCBS376ENC.BSREP2.TECHREP1.FILEIDENCFF000ZSN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.SK-N-SH.EXPID_ENCSR000EHY.BSID_ENCBS376ENC.BSREP1.TECHREP1.FILEIDENCFF000ZSL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#157 , 2132724913, order: 28, svr: scg, old #: 121
NTH=4; SUFFIX="CHIPseq.RFX5.K562.EXPID_ENCSR000EGO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.K562.EXPID_ENCSR000EGO.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YYD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.K562.EXPID_ENCSR000EGO.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YYI.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.RFX5.K562.EXPID_ENCSR000EGO.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YYF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#158 , 1986469461, order: 28, svr: scg, old #: 145
NTH=3; SUFFIX="CHIPseq.RFX5.HepG2.EXPID_ENCSR000EEA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.HepG2.EXPID_ENCSR000EEA.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XXZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.HepG2.EXPID_ENCSR000EEA.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XXX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#159 , 1944257766, order: 28, svr: scg, old #: 155
NTH=3; SUFFIX="CHIPseq.RFX5.GM12878.EXPID_ENCSR000DZW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.GM12878.EXPID_ENCSR000DZW.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WDO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.GM12878.EXPID_ENCSR000DZW.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WDK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#160 , 2594142940, order: 29, svr: scg, old #: 69
NTH=5; SUFFIX="CHIPseq.SIX5.GM12878.EXPID_ENCSR000BJE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIX5.GM12878.EXPID_ENCSR000BJE.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OEQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIX5.GM12878.EXPID_ENCSR000BJE.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OEP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#161 , 1843216015, order: 29, svr: scg, old #: 174
NTH=3; SUFFIX="CHIPseq.SIX5.K562.EXPID_ENCSR000BGX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIX5.K562.EXPID_ENCSR000BGX.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QGJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIX5.K562.EXPID_ENCSR000BGX.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QGG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#162 , 3328699010, order: 30, svr: scg, old #: 24
NTH=6; SUFFIX="CHIPseq.ATF3.HCT116.EXPID_ENCSR000BUG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.HCT116.EXPID_ENCSR000BUG.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000OYI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.HCT116.EXPID_ENCSR000BUG.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000OYD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#163 , 2088765730, order: 30, svr: scg, old #: 132
NTH=4; SUFFIX="CHIPseq.ATF3.K562.EXPID_ENCSR000BNU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.K562.EXPID_ENCSR000BNU.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PWC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.K562.EXPID_ENCSR000BNU.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PWA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#164 , 1117580168, order: 30, svr: scg, old #: 245
NTH=2; SUFFIX="CHIPseq.ATF3.K562.EXPID_ENCSR000DOG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.K562.EXPID_ENCSR000DOG.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YFW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.K562.EXPID_ENCSR000DOG.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YFV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#165 , 965431821, order: 30, svr: scg, old #: 254
NTH=12; SUFFIX="CHIPseq.ATF3.GM12878.EXPID_ENCSR000BJY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.GM12878.EXPID_ENCSR000BJY.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NSP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.GM12878.EXPID_ENCSR000BJY.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NSI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

########## scg4-ln03

#166 , 2278517505, order: 31, svr: scg, old #: 101
NTH=4; SUFFIX="CHIPseq.RCOR1.IMR-90.EXPID_ENCSR000EFG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.IMR-90.EXPID_ENCSR000EFG.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YCD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.IMR-90.EXPID_ENCSR000EFG.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YCB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#167 , 2158290970, order: 31, svr: scg, old #: 117
NTH=4; SUFFIX="CHIPseq.RCOR1.HepG2.EXPID_ENCSR000EDQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.HepG2.EXPID_ENCSR000EDQ.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XQY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.HepG2.EXPID_ENCSR000EDQ.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XQW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#168 , 2060477411, order: 31, svr: scg, old #: 137
NTH=4; SUFFIX="CHIPseq.RCOR1.HeLa-S3.EXPID_ENCSR000ECM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.HeLa-S3.EXPID_ENCSR000ECM.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XCO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.HeLa-S3.EXPID_ENCSR000ECM.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XCQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#169 , 2019804869, order: 31, svr: scg, old #: 142
NTH=4; SUFFIX="CHIPseq.RCOR1.K562.EXPID_ENCSR000EGC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGC.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YLH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGC.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YLF.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGC.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YLC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#170 , 1737371056, order: 31, svr: scg, old #: 189
NTH=3; SUFFIX="CHIPseq.RCOR1.K562.EXPID_ENCSR000EGG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGG.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YLO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGG.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YLQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#171 , 2132489207, order: 32, svr: scg, old #: 122
NTH=4; SUFFIX="CHIPseq.TBP.H1-hESC.EXPID_ENCSR000ECB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.H1-hESC.EXPID_ENCSR000ECB.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WWK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.H1-hESC.EXPID_ENCSR000ECB.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WWI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#172 , 2058058048, order: 32, svr: scg, old #: 138
NTH=4; SUFFIX="CHIPseq.TBP.GM12878.EXPID_ENCSR000DZZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.GM12878.EXPID_ENCSR000DZZ.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WFP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.GM12878.EXPID_ENCSR000DZZ.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WFQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#173 , 1956028297, order: 32, svr: scg, old #: 151
NTH=3; SUFFIX="CHIPseq.TBP.HeLa-S3.EXPID_ENCSR000EDD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.HeLa-S3.EXPID_ENCSR000EDD.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XMT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.HeLa-S3.EXPID_ENCSR000EDD.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XMS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#174 , 1897975732, order: 32, svr: scg, old #: 163
NTH=3; SUFFIX="CHIPseq.TBP.HepG2.EXPID_ENCSR000EEL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.HepG2.EXPID_ENCSR000EEL.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XZL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.HepG2.EXPID_ENCSR000EEL.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XZI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#175 , 1664920519, order: 32, svr: scg, old #: 192
NTH=3; SUFFIX="CHIPseq.TBP.K562.EXPID_ENCSR000EHA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.K562.EXPID_ENCSR000EHA.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000ZBZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.K562.EXPID_ENCSR000EHA.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000ZCA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

####### above scg4-ln03

#176 , 4264437930, order: 33, svr: scg, old #: 6
NTH=8; SUFFIX="CHIPseq.SRF.MCF-7.EXPID_ENCSR000BVA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.MCF-7.EXPID_ENCSR000BVA.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QRH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.MCF-7.EXPID_ENCSR000BVA.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QRE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#177 , 4118500779, order: 33, svr: scg, old #: 7
NTH=8; SUFFIX="CHIPseq.SRF.GM12878.EXPID_ENCSR000BGE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.GM12878.EXPID_ENCSR000BGE.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OFM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.GM12878.EXPID_ENCSR000BGE.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OFK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#178 , 2789206035, order: 33, svr: scg, old #: 53
NTH=5; SUFFIX="CHIPseq.SRF.HCT116.EXPID_ENCSR000BSC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.HCT116.EXPID_ENCSR000BSC.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PCV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.HCT116.EXPID_ENCSR000BSC.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PCS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#179 , 2005487529, order: 33, svr: scg, old #: 144
NTH=4; SUFFIX="CHIPseq.SRF.HepG2.EXPID_ENCSR000BLV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.HepG2.EXPID_ENCSR000BLV.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PQW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.HepG2.EXPID_ENCSR000BLV.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PQU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

###### here macs2

#180 , 1900507523, order: 33, svr: scg, old #: 162
NTH=3; SUFFIX="CHIPseq.SRF.GM12878.EXPID_ENCSR000BMI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.GM12878.EXPID_ENCSR000BMI.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OFL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.GM12878.EXPID_ENCSR000BMI.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OFJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#181 , 3434008627, order: 34, svr: scg, old #: 18
NTH=6; SUFFIX="CHIPseq.TEAD4.K562.EXPID_ENCSR000BRK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.K562.EXPID_ENCSR000BRK.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QIW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.K562.EXPID_ENCSR000BRK.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QIS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#182 , 3023689937, order: 34, svr: scg, old #: 39
NTH=6; SUFFIX="CHIPseq.TEAD4.MCF-7.EXPID_ENCSR000BUO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.MCF-7.EXPID_ENCSR000BUO.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QSI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.MCF-7.EXPID_ENCSR000BUO.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QSB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#183 , 2601464795, order: 34, svr: scg, old #: 68
NTH=5; SUFFIX="CHIPseq.TEAD4.SK-N-SH.EXPID_ENCSR000BUQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.SK-N-SH.EXPID_ENCSR000BUQ.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000REI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.SK-N-SH.EXPID_ENCSR000BUQ.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000REC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#184 , 2386083082, order: 34, svr: scg, old #: 89
NTH=4; SUFFIX="CHIPseq.TEAD4.A549.EXPID_ENCSR000BUD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.A549.EXPID_ENCSR000BUD.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000NIP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.A549.EXPID_ENCSR000BUD.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000NIM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#185 , 2110597162, order: 34, svr: scg, old #: 125
NTH=4; SUFFIX="CHIPseq.TEAD4.H1-hESC.EXPID_ENCSR000BRY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.H1-hESC.EXPID_ENCSR000BRY.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OWD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.H1-hESC.EXPID_ENCSR000BRY.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OWA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

############## above scg4-ln02

#186 , 1842989893, order: 34, svr: scg, old #: 175
NTH=3; SUFFIX="CHIPseq.TEAD4.HCT116.EXPID_ENCSR000BVJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.HCT116.EXPID_ENCSR000BVJ.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PDC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.HCT116.EXPID_ENCSR000BVJ.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PDE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#187 , 1798665933, order: 34, svr: scg, old #: 181
NTH=3; SUFFIX="CHIPseq.TEAD4.HepG2.EXPID_ENCSR000BRP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.HepG2.EXPID_ENCSR000BRP.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PRU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.HepG2.EXPID_ENCSR000BRP.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PRQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#188 , 4891492487, order: 35, svr: scg, old #: 2
NTH=9; SUFFIX="CHIPseq.EP300.K562.EXPID_ENCSR000AQB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000AQB.BSID_ENCBS639AAA.BSREP1.TECHREP2.FILEIDENCFF000CAZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000AQB.BSID_ENCBS639AAA.BSREP1.TECHREP1.FILEIDENCFF000CAS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#189 , 3110462163, order: 35, svr: scg, old #: 31
NTH=6; SUFFIX="CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BUA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BUA.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RBI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BUA.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RBC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#190 , 2908713685, order: 35, svr: scg, old #: 47
NTH=5; SUFFIX="CHIPseq.EP300.MCF-7.EXPID_ENCSR000BTR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.MCF-7.EXPID_ENCSR000BTR.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QPP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.MCF-7.EXPID_ENCSR000BTR.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QPK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#191 , 2379781256, order: 35, svr: scg, old #: 90
NTH=4; SUFFIX="CHIPseq.EP300.K562.EXPID_ENCSR000EGE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000EGE.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YVO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000EGE.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YVM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#192 , 2185247114, order: 35, svr: scg, old #: 111
NTH=4; SUFFIX="CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000EHV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000EHV.BSID_ENCBS376ENC.BSREP1.TECHREP1.FILEIDENCFF000ZRV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000EHV.BSID_ENCBS376ENC.BSREP2.TECHREP1.FILEIDENCFF000ZRX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#193 , 2126470741, order: 35, svr: scg, old #: 123
NTH=4; SUFFIX="CHIPseq.EP300.osteoblast.EXPID_ENCSR000AUD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.osteoblast.EXPID_ENCSR000AUD.BSID_ENCBS341AAA.BSREP1.TECHREP2.FILEIDENCFF000CUU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.osteoblast.EXPID_ENCSR000AUD.BSID_ENCBS341AAA.BSREP1.TECHREP1.FILEIDENCFF000CUT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.osteoblast.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.osteoblast/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.osteoblast/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#194 , 2123068458, order: 35, svr: scg, old #: 124
NTH=4; SUFFIX="CHIPseq.EP300.HeLa-S3.EXPID_ENCSR000ECV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.HeLa-S3.EXPID_ENCSR000ECV.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XJN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.HeLa-S3.EXPID_ENCSR000ECV.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XJM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#195 , 2062719283, order: 35, svr: scg, old #: 136
NTH=20; SUFFIX="CHIPseq.EP300.K562.EXPID_ENCSR000EGY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000EGY.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YWU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000EGY.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YWT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

############# above scg4-ln04

#196 , 1927745939, order: 35, svr: scg, old #: 158
NTH=5; SUFFIX="CHIPseq.EP300.HepG2.EXPID_ENCSR000BLW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.HepG2.EXPID_ENCSR000BLW.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PNA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.HepG2.EXPID_ENCSR000BLW.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PMZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#197 , 1887673466, order: 35, svr: scg, old #: 166
NTH=5; SUFFIX="CHIPseq.EP300.GM12878.EXPID_ENCSR000DZD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000DZD.BSID_ENCBS595CWJ.BSREP1.TECHREP1.FILEIDENCFF000WAM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000DZD.BSID_ENCBS588GPN.BSREP2.TECHREP1.FILEIDENCFF000WAO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#198 , 1660964064, order: 35, svr: scg, old #: 193
NTH=5; SUFFIX="CHIPseq.EP300.HepG2.EXPID_ENCSR000EDV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.HepG2.EXPID_ENCSR000EDV.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XVS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.HepG2.EXPID_ENCSR000EDV.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XVT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#199 , 2079374742, order: 36, svr: scg, old #: 135
NTH=5; SUFFIX="CHIPseq.STAT3.HeLa-S3.EXPID_ENCSR000EDC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.STAT3.HeLa-S3.EXPID_ENCSR000EDC.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XMR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.STAT3.HeLa-S3.EXPID_ENCSR000EDC.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XMQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#200 , 1867390973, order: 36, svr: scg, old #: 168
NTH=5; SUFFIX="CHIPseq.STAT3.GM12878.EXPID_ENCSR000DZV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.STAT3.GM12878.EXPID_ENCSR000DZV.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WFK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.STAT3.GM12878.EXPID_ENCSR000DZV.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WFJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

##########

#201 , 3813571049, order: 38, svr: scg, old #: 11
NTH=7; SUFFIX="CHIPseq.SIN3A.MCF-7.EXPID_ENCSR000BUM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR000BUM.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QQX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR000BUM.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QQU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#202 , 3048204016, order: 38, svr: scg, old #: 36
NTH=6; SUFFIX="CHIPseq.SIN3A.HepG2.EXPID_ENCSR000BGL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.HepG2.EXPID_ENCSR000BGL.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PQC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.HepG2.EXPID_ENCSR000BGL.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PPW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#203 , 2853600587, order: 38, svr: scg, old #: 52
NTH=5; SUFFIX="CHIPseq.SIN3A.HCT116.EXPID_ENCSR000BSG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.HCT116.EXPID_ENCSR000BSG.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PCE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.HCT116.EXPID_ENCSR000BSG.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PCD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#204 , 2734760689, order: 38, svr: scg, old #: 59
NTH=5; SUFFIX="CHIPseq.SIN3A.SK-N-SH.EXPID_ENCSR000BPB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.SK-N-SH.EXPID_ENCSR000BPB.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RDL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.SK-N-SH.EXPID_ENCSR000BPB.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RDJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#205 , 2458142355, order: 38, svr: scg, old #: 79
NTH=4; SUFFIX="CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000EBO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000EBO.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WVE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000EBO.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WVG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#206 , 2355086735, order: 38, svr: scg, old #: 97
NTH=4; SUFFIX="CHIPseq.SIN3A.K562.EXPID_ENCSR000BLR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.K562.EXPID_ENCSR000BLR.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QGA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.K562.EXPID_ENCSR000BLR.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QFY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#207 , 2089610825, order: 38, svr: scg, old #: 131
NTH=4; SUFFIX="CHIPseq.BCL3.GM12878.EXPID_ENCSR000BNQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.BCL3.GM12878.EXPID_ENCSR000BNQ.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NTN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.BCL3.GM12878.EXPID_ENCSR000BNQ.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NTL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#208 , 1932112118, order: 38, svr: scg, old #: 157
NTH=3; SUFFIX="CHIPseq.SIN3A.GM12878.EXPID_ENCSR000DYX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.GM12878.EXPID_ENCSR000DYX.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WDE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.GM12878.EXPID_ENCSR000DYX.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WDC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#209 , 1862211924, order: 38, svr: scg, old #: 170
NTH=3; SUFFIX="CHIPseq.SIN3A.K562.EXPID_ENCSR920BLG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.K562.EXPID_ENCSR920BLG.BSID_ENCBS383VKK.BSREP1.TECHREP1.FILEIDENCFF002EWE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.K562.EXPID_ENCSR920BLG.BSID_ENCBS486UBH.BSREP2.TECHREP1.FILEIDENCFF002EWJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

############ nandi starts here

#210 , 1387614343, order: 6, svr: nandi, old #: 225
NTH=3; SUFFIX="CHIPseq.EGR1.H1-hESC.EXPID_ENCSR000BJA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.H1-hESC.EXPID_ENCSR000BJA.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OOH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.H1-hESC.EXPID_ENCSR000BJA.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OOO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

######## DROPPED
##211 , 1311114267, order: 16, svr: nandi, old #: 229
#NTH=3; SUFFIX="CHIPseq.REST.K562.EXPID_ENCSR000ATM"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.K562.EXPID_ENCSR000ATM.BSID_ENCBS674MPN.BSREP1.TECHREP1.FILEIDENCFF001QXC.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
###SUBSAMPLED CTL (40M)!
#sleep 5

#213 , 1330597189, order: 25, svr: nandi, old #: 227
NTH=3; SUFFIX="CHIPseq.YY1.H1-hESC.EXPID_ENCSR000BKD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.H1-hESC.EXPID_ENCSR000BKD.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OWS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.H1-hESC.EXPID_ENCSR000BKD.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OWO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#214 , 1658214743, order: 30, svr: nandi, old #: 194
NTH=3; SUFFIX="CHIPseq.ATF3.HepG2.EXPID_ENCSR000BKE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.HepG2.EXPID_ENCSR000BKE.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PFQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.HepG2.EXPID_ENCSR000BKE.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PFR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#215 , 1637949084, order: 31, svr: nandi, old #: 196
NTH=3; SUFFIX="CHIPseq.RCOR1.GM12878.EXPID_ENCSR000DZC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.GM12878.EXPID_ENCSR000DZC.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VTW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.GM12878.EXPID_ENCSR000DZC.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VTY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#217 , 1387663641, order: 33, svr: nandi, old #: 224
NTH=3; SUFFIX="CHIPseq.SRF.H1-hESC.EXPID_ENCSR000BIV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.H1-hESC.EXPID_ENCSR000BIV.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OUX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.H1-hESC.EXPID_ENCSR000BIV.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OUU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#218 , 1430666655, order: 35, svr: nandi, old #: 221
NTH=3; SUFFIX="CHIPseq.EP300.GM12878.EXPID_ENCSR000DZG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000DZG.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WAX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000DZG.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WAV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#219 , 1389932677, order: 35, svr: nandi, old #: 223
NTH=3; SUFFIX="CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BMA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BMA.BSID_ENCBS404ENC.BSREP1.TECHREP1.FILEIDENCFF000RFU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BMA.BSID_ENCBS404ENC.BSREP2.TECHREP1.FILEIDENCFF000RFV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.SK-N-SH/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5






#221 , 1651741805, order: 37, svr: nandi, old #: 195
NTH=3; SUFFIX="CHIPseq.ARID3A.HepG2.EXPID_ENCSR000EDP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ARID3A.HepG2.EXPID_ENCSR000EDP.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XOS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ARID3A.HepG2.EXPID_ENCSR000EDP.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XOU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5


###### mitra starts here

#222 , 1525091714, order: 12, svr: mitra, old #: 211
NTH=3; SUFFIX="CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BLE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BLE.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PIM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BLE.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PIJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#223 , 1472362342, order: 12, svr: mitra, old #: 217
NTH=3; SUFFIX="CHIPseq.FOXA1.Ishikawa.EXPID_ENCSR000BKW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOXA1.Ishikawa.EXPID_ENCSR000BKW.BSID_ENCBS312UTV.BSREP2.TECHREP1.FILEIDENCFF000NMT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOXA1.Ishikawa.EXPID_ENCSR000BKW.BSID_ENCBS312UTV.BSREP1.TECHREP1.FILEIDENCFF000NMR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Ishikawa.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Ishikawa/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Ishikawa/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#224 , 1628846891, order: 15, svr: mitra, old #: 198
NTH=3; SUFFIX="CHIPseq.CEBPB.HepG2.EXPID_ENCSR000BQI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.HepG2.EXPID_ENCSR000BQI.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PGI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.HepG2.EXPID_ENCSR000BQI.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PGG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#225 , 1604522770, order: 15, svr: mitra, old #: 200
NTH=3; SUFFIX="CHIPseq.CEBPB.IMR-90.EXPID_ENCSR000EFM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.IMR-90.EXPID_ENCSR000EFM.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YBL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.IMR-90.EXPID_ENCSR000EFM.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YBO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.IMR-90/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#226 , 1633851060, order: 16, svr: mitra, old #: 197
NTH=3; SUFFIX="CHIPseq.REST.GM12878.EXPID_ENCSR000BQS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.GM12878.EXPID_ENCSR000BQS.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NYN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.GM12878.EXPID_ENCSR000BQS.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NYK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#227 , 1544375176, order: 17, svr: mitra, old #: 209
NTH=3; SUFFIX="CHIPseq.MAX.HepG2.EXPID_ENCSR000EDS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HepG2.EXPID_ENCSR000EDS.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XUF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HepG2.EXPID_ENCSR000EDS.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XUH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#228 , 1474329096, order: 18, svr: mitra, old #: 216
NTH=3; SUFFIX="CHIPseq.CTCF.GM12878.EXPID_ENCSR000DZN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DZN.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VUW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DZN.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VUU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#229 , 1617631160, order: 21, svr: mitra, old #: 199
NTH=3; SUFFIX="CHIPseq.JUND.GM12878.EXPID_ENCSR000DYS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.GM12878.EXPID_ENCSR000DYS.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VXA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.GM12878.EXPID_ENCSR000DYS.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VXC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#230 , 1545732684, order: 29, svr: mitra, old #: 208
NTH=3; SUFFIX="CHIPseq.SIX5.H1-hESC.EXPID_ENCSR000BIQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIX5.H1-hESC.EXPID_ENCSR000BIQ.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OTR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIX5.H1-hESC.EXPID_ENCSR000BIQ.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OTO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#231 , 1508815920, order: 37, svr: mitra, old #: 212
NTH=3; SUFFIX="CHIPseq.ARID3A.K562.EXPID_ENCSR000EFY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ARID3A.K562.EXPID_ENCSR000EFY.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YEU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ARID3A.K562.EXPID_ENCSR000EFY.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YEW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#232 , 1537406328, order: 38, svr: mitra, old #: 210
NTH=3; SUFFIX="CHIPseq.SIN3A.Panc1.EXPID_ENCSR000BOW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.Panc1.EXPID_ENCSR000BOW.BSID_ENCBS425ENC.BSREP2.TECHREP1.FILEIDENCFF000QUG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.Panc1.EXPID_ENCSR000BOW.BSID_ENCBS425ENC.BSREP1.TECHREP1.FILEIDENCFF000QUD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

########### kali starts here

#233 , 1477748718, order: 8, svr: kali, old #: 215
NTH=3; SUFFIX="CHIPseq.TCF7L2.Panc1.EXPID_ENCSR000EXL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.Panc1.EXPID_ENCSR000EXL.BSID_ENCBS729QZR.BSREP2.TECHREP1.FILEIDENCFF000ZNZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.Panc1.EXPID_ENCSR000EXL.BSID_ENCBS729QZR.BSREP1.TECHREP1.FILEIDENCFF000ZNX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#234 , 1479646299, order: 14, svr: kali, old #: 214
NTH=3; SUFFIX="CHIPseq.GABPA.H1-hESC.EXPID_ENCSR000BIW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.H1-hESC.EXPID_ENCSR000BIW.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OPC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.H1-hESC.EXPID_ENCSR000BIW.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OPF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#235 , 1497729262, order: 15, svr: kali, old #: 213
NTH=3; SUFFIX="CHIPseq.CEBPB.HepG2.EXPID_ENCSR000EEE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.HepG2.EXPID_ENCSR000EEE.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XQN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.HepG2.EXPID_ENCSR000EEE.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XQM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#237 , 1563211073, order: 18, svr: kali, old #: 205
NTH=3; SUFFIX="CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000AMF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000AMF.BSID_ENCBS718AAA.BSREP1.TECHREP1.FILEIDENCFF000AVS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000AMF.BSID_ENCBS718AAA.BSREP1.TECHREP2.FILEIDENCFF000AVU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#238 , 1548134492, order: 18, svr: kali, old #: 207
NTH=3; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000AKO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000AKO.BSID_ENCBS639AAA.BSREP1.TECHREP1.FILEIDENCFF000BWM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000AKO.BSID_ENCBS639AAA.BSREP1.TECHREP2.FILEIDENCFF000BWR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#239 , 1578638258, order: 21, svr: kali, old #: 204
NTH=3; SUFFIX="CHIPseq.JUND.HeLa-S3.EXPID_ENCSR000EDH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.HeLa-S3.EXPID_ENCSR000EDH.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XHI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.HeLa-S3.EXPID_ENCSR000EDH.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XHO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#240 , 1579647719, order: 25, svr: kali, old #: 203
NTH=3; SUFFIX="CHIPseq.YY1.GM12892.EXPID_ENCSR000BLT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.GM12892.EXPID_ENCSR000BLT.BSID_ENCBS055ENC.BSREP2.TECHREP1.FILEIDENCFF000OML.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.GM12892.EXPID_ENCSR000BLT.BSID_ENCBS055ENC.BSREP1.TECHREP1.FILEIDENCFF000OMI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12892.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12892/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12892/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#241 , 1560403616, order: 25, svr: kali, old #: 206
NTH=3; SUFFIX="CHIPseq.YY1.GM12891.EXPID_ENCSR000BKJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.GM12891.EXPID_ENCSR000BKJ.BSID_ENCBS388ENC.BSREP1.TECHREP1.FILEIDENCFF000OKL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.GM12891.EXPID_ENCSR000BKJ.BSID_ENCBS388ENC.BSREP2.TECHREP1.FILEIDENCFF000OKM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12891.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12891/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12891/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
sleep 5

#242 , 1588304103, order: 38, svr: kali, old #: 202
NTH=15; SUFFIX="CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000BIS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000BIS.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OTJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000BIS.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OTG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

## re-run here

######## kadru starts here

################ DROPPED
##243 , 1293018872, order: 6, svr: kadru, old #: 231
#NTH=2; SUFFIX="CHIPseq.EGR1.GM12878.EXPID_ENCSR000BRG"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.GM12878.EXPID_ENCSR000BRG.BSID_ENCBS110ENC.BSREP3.TECHREP1.FILEIDENCFF000NVB.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
#sleep 5

#244 , 1229955256, order: 7, svr: kadru, old #: 235
NTH=2; SUFFIX="CHIPseq.TCF12.H1-hESC.EXPID_ENCSR000BIT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.H1-hESC.EXPID_ENCSR000BIT.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OVP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.H1-hESC.EXPID_ENCSR000BIT.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OVN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#245 , 1470024150, order: 13, svr: kadru, old #: 218
NTH=2; SUFFIX="CHIPseq.TAF1.H1-hESC.EXPID_ENCSR000BHO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.H1-hESC.EXPID_ENCSR000BHO.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OVB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.H1-hESC.EXPID_ENCSR000BHO.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OVC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#247 , 1225370240, order: 17, svr: kadru, old #: 236
NTH=20; SUFFIX="CHIPseq.MAX.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000EEZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000EEZ.BSID_ENCBS851AAA.BSREP1.TECHREP1.FILEIDENCFF000YBA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000EEZ.BSID_ENCBS851AAA.BSREP2.TECHREP1.FILEIDENCFF000YBB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.endothelial_cell_of_umbilical_vein/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.endothelial_cell_of_umbilical_vein/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#248 , 1189947397, order: 17, svr: kadru, old #: 239
NTH=2; SUFFIX="CHIPseq.MAX.K562.EXPID_ENCSR000EFV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000EFV.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YTF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000EFV.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YTH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#250 , 1267131405, order: 18, svr: kadru, old #: 233
NTH=2; SUFFIX="CHIPseq.CTCF.astrocyte.EXPID_ENCSR000AOO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.astrocyte.EXPID_ENCSR000AOO.BSID_ENCBS020ENC.BSREP1.TECHREP2.FILEIDENCFF000CFW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.astrocyte.EXPID_ENCSR000AOO.BSID_ENCBS020ENC.BSREP1.TECHREP1.FILEIDENCFF000CFV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.astrocyte.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.astrocyte/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.astrocyte/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#253 , 1445411365, order: 25, svr: kadru, old #: 220
NTH=2; SUFFIX="CHIPseq.YY1.GM12878.EXPID_ENCSR000BNP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.GM12878.EXPID_ENCSR000BNP.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OHO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.GM12878.EXPID_ENCSR000BNP.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OHH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

#255 , 1194492362, order: 35, svr: kadru, old #: 238
NTH=2; SUFFIX="CHIPseq.EP300.H1-hESC.EXPID_ENCSR000BKK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.H1-hESC.EXPID_ENCSR000BKK.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000ORA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.H1-hESC.EXPID_ENCSR000BKK.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OQU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5


####### wotan starts here

#256 , 552738831, order: 8, svr: wotan, old #: 267
NTH=6; SUFFIX="CHIPseq.TCF7L2.HCT116.EXPID_ENCSR000EUV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HCT116.EXPID_ENCSR000EUV.BSID_ENCBS409MTT.BSREP1.TECHREP1.FILEIDENCFF000WXH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HCT116.EXPID_ENCSR000EUV.BSID_ENCBS409MTT.BSREP2.TECHREP1.FILEIDENCFF000WXJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HCT116/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5




## DROPPED blacklist
##263 , 583802726, order: 18, svr: wotan, old #: 264
#NTH=6; SUFFIX="CHIPseq.CTCF.GM12864.EXPID_ENCSR000DRB"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12864.EXPID_ENCSR000DRB.BSID_ENCBS208AAA.BSREP1.TECHREP1.FILEIDENCFF001HBV.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12864.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12864/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12864/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#sleep 5

#######LATER
##264 , 579912615, order: 18, svr: wotan, old #: 265
#NTH=6; SUFFIX="CHIPseq.CTCF.B_cell.EXPID_ENCSR000AUV"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.B_cell.EXPID_ENCSR000AUV.BSID_ENCBS098ETX.BSREP3.TECHREP1.FILEIDENCFF000AMR.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.B_cell.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.B_cell/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.B_cell/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
###SUBSAMPLED CTL (40M)!
#sleep 5

## DROPPED blacklist
##265 , 569171040, order: 18, svr: wotan, old #: 266
#NTH=6; SUFFIX="CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000DLK"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000DLK.BSID_ENCBS670AAA.BSREP1.TECHREP1.FILEIDENCFF000RSJ.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
#sleep 5

## DROPPED blacklist
##266 , 485180935, order: 18, svr: wotan, old #: 270
#NTH=6; SUFFIX="CHIPseq.CTCF.GM12865.EXPID_ENCSR000DRE"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12865.EXPID_ENCSR000DRE.BSID_ENCBS209AAA.BSREP2.TECHREP1.FILEIDENCFF001HCR.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12865.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12865/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12865/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#sleep 5

## DROPPED blacklist
#267 , 411327106, order: 18, svr: wotan, old #: 272
#NTH=2; SUFFIX="CHIPseq.CTCF.kidney.EXPID_ENCSR000DMC"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.kidney.EXPID_ENCSR000DMC.BSID_ENCBS349AAA.BSREP2.TECHREP1.FILEIDENCFF000RXM.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.kidney.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.kidney/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.kidney/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#sleep 5

#268 , 65558286, order: 18, svr: wotan, old #: 276
#NTH=2; SUFFIX="CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000ALA"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000ALA.BSID_ENCBS717AAA.BSREP1.TECHREP3.FILEIDENCFF000BQY.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.endothelial_cell_of_umbilical_vein/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.endothelial_cell_of_umbilical_vein/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
###SUBSAMPLED CTL (40M)!
#sleep 5

###LATER
##269 , 888691477, order: 19, svr: wotan, old #: 257
#NTH=2; SUFFIX="CHIPseq.MYC.H1-hESC.EXPID_ENCSR000DLI"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.H1-hESC.EXPID_ENCSR000DLI.BSID_ENCBS670AAA.BSREP1.TECHREP1.FILEIDENCFF000RSE.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
###SUBSAMPLED CTL (40M)!
#sleep 5

#274 , 935658476, order: 25, svr: wotan, old #: 256
NTH=15; SUFFIX="CHIPseq.YY1.K562.EXPID_ENCSR000BKU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000BKU.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QKK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000BKU.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QKJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#275 , 840861563, order: 30, svr: wotan, old #: 259
NTH=8; SUFFIX="CHIPseq.ATF3.H1-hESC.EXPID_ENCSR000BKC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.H1-hESC.EXPID_ENCSR000BKC.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OMW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.H1-hESC.EXPID_ENCSR000BKC.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OMV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
##SUBSAMPLED CTL (40M)!
sleep 5

######LATER
##276 , 846194302, order: 35, svr: wotan, old #: 258
#NTH=2; SUFFIX="CHIPseq.EP300.H1-hESC.EXPID_ENCSR000AUQ"
#FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.H1-hESC.EXPID_ENCSR000AUQ.BSID_ENCBS380OBH.BSREP1.TECHREP1.FILEIDENCFF000AZO.unpaired.fastq.gz
#CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
#WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
#cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
#cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
#cd $WORK;
#bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000 
###SUBSAMPLED CTL (40M)!
#sleep 5

############################ PE

NTH=32; SUFFIX="CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ"
FASTQ1_1=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ.BSID_ENCBS378AAA.BSREP1.TECHREP1.FILEIDENCFF156EZY.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ.BSID_ENCBS378AAA.BSREP1.TECHREP1.FILEIDENCFF052XOQ.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ.BSID_ENCBS406AAA.BSREP2.TECHREP1.FILEIDENCFF470OUZ.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ.BSID_ENCBS406AAA.BSREP2.TECHREP1.FILEIDENCFF555QJQ.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.K562.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.K562.R2.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000
sleep 5

NTH=32; SUFFIX="CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO"
FASTQ1_1=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO.BSID_ENCBS216AOQ.BSREP1.TECHREP1.FILEIDENCFF733YZZ.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO.BSID_ENCBS216AOQ.BSREP1.TECHREP1.FILEIDENCFF354HNG.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO.BSID_ENCBS616MBU.BSREP3.TECHREP1.FILEIDENCFF175HFF.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO.BSID_ENCBS616MBU.BSREP3.TECHREP1.FILEIDENCFF543HLG.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.MCF-7.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.MCF-7.R2.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.MCF-7.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 40000000
sleep 5


































#212 , 1382245708, order: 18, svr: scg<-nandi, old #: 226
NTH=20; SUFFIX="CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000ALJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000ALJ.BSID_ENCBS650AAA.BSREP1.TECHREP1.FILEIDENCFF000CMM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000ALJ.BSID_ENCBS650AAA.BSREP1.TECHREP2.FILEIDENCFF000CMF.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000ALJ.BSID_ENCBS650AAA.BSREP1.TECHREP3.FILEIDENCFF000CMG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.keratinocyte.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.keratinocyte/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.keratinocyte/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#220 , 1313551386, order: 35, svr: scg<-nandi, old #: 228
NTH=10; SUFFIX="CHIPseq.EP300.GM12878.EXPID_ENCSR000BHB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000BHB.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NZG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000BHB.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NZH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 20000000 
##SUBSAMPLED CTL (20M)!
sleep 5

#216 , 1399790756, order: 33, svr: scg<-nandi, old #: 222
NTH=10; SUFFIX="CHIPseq.SRF.K562.EXPID_ENCSR000BLK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.K562.EXPID_ENCSR000BLK.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QHK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.K562.EXPID_ENCSR000BLK.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QHH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 20000000 
##SUBSAMPLED CTL (20M)!
sleep 5

#262 , 589216083, order: 18, svr: wotan, old #: 263
NTH=15; SUFFIX="CHIPseq.CTCF.HepG2.EXPID_ENCSR000DLS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000DLS.BSID_ENCBS773AAA.BSREP1.TECHREP1.FILEIDENCFF000RUI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000DLS.BSID_ENCBS773AAA.BSREP2.TECHREP1.FILEIDENCFF000RUJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HepG2/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#273 , 310229810, order: 21, svr: wotan, old #: 275
NTH=15; SUFFIX="CHIPseq.JUND.GM12878.EXPID_ENCSR000EYV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.GM12878.EXPID_ENCSR000EYV.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VYE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.GM12878.EXPID_ENCSR000EYV.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VYD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#270 , 632792146, order: 19, svr: wotan, old #: 262
NTH=15; SUFFIX="CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000DLN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000DLN.BSID_ENCBS646PGB.BSREP2.TECHREP1.FILEIDENCFF000RST.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000DLN.BSID_ENCBS646PGB.BSREP1.TECHREP1.FILEIDENCFF000RSR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#261 , 359691883, order: 17, svr: wotan, old #: 273
NTH=12; SUFFIX="CHIPseq.MAX.K562.EXPID_ENCSR000FAE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000FAE.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YTY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000FAE.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YTX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#260 , 478140983, order: 17, svr: wotan, old #: 271
NTH=20; SUFFIX="CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000EZF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000EZF.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XHZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000EZF.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XHY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#252 , 1468988397, order: 25, svr: wotan, old #: 219
NTH=20; SUFFIX="CHIPseq.YY1.GM12878.EXPID_ENCSR000EUM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.GM12878.EXPID_ENCSR000EUM.BSID_ENCBS446LSH.BSREP1.TECHREP1.FILEIDENCFF000WGS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.GM12878.EXPID_ENCSR000EUM.BSID_ENCBS907LID.BSREP2.TECHREP1.FILEIDENCFF000WGT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 20000000 
##SUBSAMPLED CTL (20M)!
sleep 5

#271 , 516876762, order: 19, svr: wotan, old #: 268
NTH=12; SUFFIX="CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000EZD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000EZD.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XCV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000EZD.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XCT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#272 , 355001644, order: 19, svr: wotan, old #: 274
NTH=20; SUFFIX="CHIPseq.MYC.K562.EXPID_ENCSR000FAG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000FAG.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YMC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000FAG.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YMB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#257 , 781372069, order: 13, svr: wotan, old #: 260
NTH=10; SUFFIX="CHIPseq.TAF1.K562.EXPID_ENCSR000BKS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.K562.EXPID_ENCSR000BKS.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QHW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.K562.EXPID_ENCSR000BKS.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QHU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#259 , 488708208, order: 17, svr: wotan, old #: 269
NTH=10; SUFFIX="CHIPseq.MAX.H1-hESC.EXPID_ENCSR000EUP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.H1-hESC.EXPID_ENCSR000EUP.BSID_ENCBS668AAA.BSREP1.TECHREP1.FILEIDENCFF000WUJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.H1-hESC.EXPID_ENCSR000EUP.BSID_ENCBS668AAA.BSREP2.TECHREP1.FILEIDENCFF000WUH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.H1-hESC/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#258 , 634105514, order: 16, svr: wotan, old #: 261
NTH=10; SUFFIX="CHIPseq.REST.Panc1.EXPID_ENCSR000BPK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BPK.BSID_ENCBS425ENC.BSREP2.TECHREP1.FILEIDENCFF000QSR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BPK.BSID_ENCBS425ENC.BSREP1.TECHREP1.FILEIDENCFF000QSK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.Panc1/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#236 , 1589072898, order: 18, svr: kali, old #: 201
NTH=15; SUFFIX="CHIPseq.CTCF.GM12878.EXPID_ENCSR000DRZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DRZ.BSID_ENCBS195XMM.BSREP2.TECHREP1.FILEIDENCFF001HIA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DRZ.BSID_ENCBS195XMM.BSREP1.TECHREP1.FILEIDENCFF001HHX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.GM12878/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 10000000 
##SUBSAMPLED CTL (10M)!
sleep 5

#254 , 1301242968, order: 29, svr: kadru, old #: 230
NTH=10; SUFFIX="CHIPseq.SIX5.K562.EXPID_ENCSR000BNW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIX5.K562.EXPID_ENCSR000BNW.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QGQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIX5.K562.EXPID_ENCSR000BNW.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QGN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 20000000 
##SUBSAMPLED CTL (20M)!
sleep 5

#249 , 1269089653, order: 18, svr: kadru, old #: 232
NTH=12; SUFFIX="CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DUB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DUB.BSID_ENCBS432ENC.BSREP2.TECHREP1.FILEIDENCFF001HNP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DUB.BSID_ENCBS432ENC.BSREP1.TECHREP1.FILEIDENCFF001HNI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.HeLa-S3/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#251 , 1221885191, order: 18, svr: kadru, old #: 237
NTH=20; SUFFIX="CHIPseq.CTCF.A549.EXPID_ENCSR000DPF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DPF.BSID_ENCBS858LUL.BSREP2.TECHREP1.FILEIDENCFF001GWB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DPF.BSID_ENCBS163AAA.BSREP1.TECHREP1.FILEIDENCFF001GVU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.A549/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 5000000 
##SUBSAMPLED CTL (5M)!
sleep 5

#246 , 1253711779, order: 14, svr: kadru, old #: 234
NTH=10; SUFFIX="CHIPseq.GABPA.K562.EXPID_ENCSR000BLO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.K562.EXPID_ENCSR000BLO.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QAV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.K562.EXPID_ENCSR000BLO.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QAQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.K562/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out -subsample_ctl 20000000 
##SUBSAMPLED CTL (20M)!
sleep 5






######### NEW

NTH=20; SUFFIX="CHIPseq.ATF3.K562.EXPID_ENCSR028UIU"; CELL_TYPE="K562"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS734NZL.BSREP1.TECHREP1.FILEIDENCFF457RYN.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS734NZL.BSREP1.TECHREP1.FILEIDENCFF126JWD.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS320BUL.BSREP2.TECHREP1.FILEIDENCFF367HUF.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS320BUL.BSREP2.TECHREP1.FILEIDENCFF169CRK.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -mem_spp 30G -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5

NTH=20; SUFFIX="CHIPseq.ATF7.K562.EXPID_ENCSR972ZBV"; CELL_TYPE="K562"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.ATF7.K562.EXPID_ENCSR972ZBV.BSID_ENCBS543YEP.BSREP1.TECHREP1.FILEIDENCFF002DOR.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.ATF7.K562.EXPID_ENCSR972ZBV.BSID_ENCBS543YEP.BSREP1.TECHREP1.FILEIDENCFF002EIJ.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.ATF7.K562.EXPID_ENCSR972ZBV.BSID_ENCBS293ZDP.BSREP2.TECHREP1.FILEIDENCFF002DTY.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.ATF7.K562.EXPID_ENCSR972ZBV.BSID_ENCBS293ZDP.BSREP2.TECHREP1.FILEIDENCFF002DOV.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5

NTH=20; SUFFIX="CHIPseq.E2F1.GM12878.EXPID_ENCSR494MFV"; CELL_TYPE="GM12878"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.E2F1.GM12878.EXPID_ENCSR494MFV.BSID_ENCBS488GLI.BSREP1.TECHREP1.FILEIDENCFF645FEN.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.E2F1.GM12878.EXPID_ENCSR494MFV.BSID_ENCBS488GLI.BSREP1.TECHREP1.FILEIDENCFF788BOF.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.E2F1.GM12878.EXPID_ENCSR494MFV.BSID_ENCBS339VHO.BSREP2.TECHREP1.FILEIDENCFF399WZO.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.E2F1.GM12878.EXPID_ENCSR494MFV.BSID_ENCBS339VHO.BSREP2.TECHREP1.FILEIDENCFF666OQA.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5

NTH=20; SUFFIX="CHIPseq.HA-E2F1.HepG2.EXPID_ENCSR124JFW"; CELL_TYPE="HepG2"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.HA-E2F1.HepG2.EXPID_ENCSR124JFW.BSID_ENCBS731WFK.BSREP1.TECHREP1.FILEIDENCFF763GHG.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.HA-E2F1.HepG2.EXPID_ENCSR124JFW.BSID_ENCBS731WFK.BSREP1.TECHREP1.FILEIDENCFF654DJP.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.HA-E2F1.HepG2.EXPID_ENCSR124JFW.BSID_ENCBS591PPP.BSREP2.TECHREP1.FILEIDENCFF190MIW.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.HA-E2F1.HepG2.EXPID_ENCSR124JFW.BSID_ENCBS591PPP.BSREP2.TECHREP1.FILEIDENCFF188XVQ.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5

NTH=20; SUFFIX="CHIPseq.RFX5.MCF-7.EXPID_ENCSR924TVL"; CELL_TYPE="MCF-7"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.RFX5.MCF-7.EXPID_ENCSR924TVL.BSID_ENCBS216AOQ.BSREP1.TECHREP1.FILEIDENCFF002EHG.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.RFX5.MCF-7.EXPID_ENCSR924TVL.BSID_ENCBS216AOQ.BSREP1.TECHREP1.FILEIDENCFF002EHA.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.RFX5.MCF-7.EXPID_ENCSR924TVL.BSID_ENCBS536NWC.BSREP2.TECHREP1.FILEIDENCFF002DTW.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.RFX5.MCF-7.EXPID_ENCSR924TVL.BSID_ENCBS536NWC.BSREP2.TECHREP1.FILEIDENCFF002DUG.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -mem_spp 30G -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5

NTH=20; SUFFIX="CHIPseq.MAFK.MCF-7.EXPID_ENCSR555PBN"; CELL_TYPE="MCF-7"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.MAFK.MCF-7.EXPID_ENCSR555PBN.BSID_ENCBS168ISE.BSREP1.TECHREP1.FILEIDENCFF002DPW.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.MAFK.MCF-7.EXPID_ENCSR555PBN.BSID_ENCBS168ISE.BSREP1.TECHREP1.FILEIDENCFF002EGJ.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.MAFK.MCF-7.EXPID_ENCSR555PBN.BSID_ENCBS034XKZ.BSREP2.TECHREP1.FILEIDENCFF002DTR.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.MAFK.MCF-7.EXPID_ENCSR555PBN.BSID_ENCBS034XKZ.BSREP2.TECHREP1.FILEIDENCFF002DPV.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -mod bwa/0.6.2 -mem_spp 30G -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5


NTH=20; SUFFIX="CHIPseq.MAFK.A549.EXPID_ENCSR541WQI"; CELL_TYPE="A549"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.MAFK.A549.EXPID_ENCSR541WQI.BSID_ENCBS611JSC.BSREP2.TECHREP1.FILEIDENCFF002ELY.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.MAFK.A549.EXPID_ENCSR541WQI.BSID_ENCBS611JSC.BSREP2.TECHREP1.FILEIDENCFF002ELZ.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.MAFK.A549.EXPID_ENCSR541WQI.BSID_ENCBS848SUF.BSREP3.TECHREP1.FILEIDENCFF002EMA.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.MAFK.A549.EXPID_ENCSR541WQI.BSID_ENCBS848SUF.BSREP3.TECHREP1.FILEIDENCFF002EMB.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -mem_spp 30G -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5

NTH=20; SUFFIX="CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS"; CELL_TYPE="MCF-7"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS.BSID_ENCBS670IYV.BSREP1.TECHREP1.FILEIDENCFF220OFM.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS.BSID_ENCBS670IYV.BSREP1.TECHREP1.FILEIDENCFF653KYN.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS.BSID_NOBSID.BSREP2.TECHREP1.FILEIDENCFF804SDU.R2.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS.BSID_NOBSID.BSREP2.TECHREP1.FILEIDENCFF841EZY.R1.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -mem_spp 30G -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5


######### SE

NTH=20; SUFFIX="CHIPseq.JUND.liver.EXPID_ENCSR837GTK"; CELL_TYPE="liver.BSID_ENCBS046RNA"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.JUND.liver.EXPID_ENCSR837GTK.BSID_ENCBS046RNA.BSREP1.TECHREP1.FILEIDENCFF215GBK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.JUND.liver.EXPID_ENCSR837GTK.BSID_ENCBS046RNA.BSREP2.TECHREP1.FILEIDENCFF978CPC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (40M)!
sleep 5

NTH=20; SUFFIX="CHIPseq.JUND.liver.EXPID_ENCSR196HGZ"; CELL_TYPE="liver.BSID_ENCBS401URL"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.JUND.liver.EXPID_ENCSR196HGZ.BSID_ENCBS401URL.BSREP1.TECHREP1.FILEIDENCFF689WAA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.JUND.liver.EXPID_ENCSR196HGZ.BSID_ENCBS401URL.BSREP2.TECHREP1.FILEIDENCFF972ZUD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (40M)!
sleep 5

NTH=20; SUFFIX="CHIPseq.ATF3.liver.EXPID_ENCSR205FOW"; CELL_TYPE="liver.BSID_ENCBS401URL"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.ATF3.liver.EXPID_ENCSR205FOW.BSID_ENCBS401URL.BSREP1.TECHREP1.FILEIDENCFF876KCK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.ATF3.liver.EXPID_ENCSR205FOW.BSID_ENCBS401URL.BSREP2.TECHREP1.FILEIDENCFF996PYT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (40M)!
sleep 5

NTH=20; SUFFIX="CHIPseq.ATF3.liver.EXPID_ENCSR480LIS"; CELL_TYPE="liver.BSID_ENCBS046RNA"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.ATF3.liver.EXPID_ENCSR480LIS.BSID_ENCBS046RNA.BSREP1.TECHREP1.FILEIDENCFF522PUA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.ATF3.liver.EXPID_ENCSR480LIS.BSID_ENCBS046RNA.BSREP2.TECHREP1.FILEIDENCFF094LXX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (40M)!
sleep 5

NTH=20; SUFFIX="CHIPseq.E2F1.HeLa-S3.EXPID_ENCSR000EVJ"; CELL_TYPE="HeLa-S3"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.E2F1.HeLa-S3.EXPID_ENCSR000EVJ.BSID_ENCBS500SDW.BSREP1.TECHREP1.FILEIDENCFF000XDG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.E2F1.HeLa-S3.EXPID_ENCSR000EVJ.BSID_ENCBS500SDW.BSREP2.TECHREP1.FILEIDENCFF000XDF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (40M)!
sleep 5

NTH=15; SUFFIX="CHIPseq.NANOG.H1-hESC.EXPID_ENCSR000BMT"; CELL_TYPE="H1-hESC"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.NANOG.H1-hESC.EXPID_ENCSR000BMT.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OQA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.NANOG.H1-hESC.EXPID_ENCSR000BMT.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OQM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (40M)!
sleep 5

NTH=20; SUFFIX="CHIPseq.ZNF143.HepG2.EXPID_ENCSR101FJT"; CELL_TYPE="HepG2"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.ZNF143.HepG2.EXPID_ENCSR101FJT.BSID_ENCBS522AAA.BSREP1.TECHREP1.FILEIDENCFF001YXF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.ZNF143.HepG2.EXPID_ENCSR101FJT.BSID_ENCBS523AAA.BSREP2.TECHREP1.FILEIDENCFF001YXH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (40M)!
sleep 5

NTH=20; SUFFIX="CHIPseq.E2F6.HeLa-S3.EXPID_ENCSR000EVK"; CELL_TYPE="HeLa-S3"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.E2F6.HeLa-S3.EXPID_ENCSR000EVK.BSID_ENCBS500SDW.BSREP1.TECHREP1.FILEIDENCFF000XDN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.E2F6.HeLa-S3.EXPID_ENCSR000EVK.BSID_ENCBS500SDW.BSREP2.TECHREP1.FILEIDENCFF000XDX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 10000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (10M)!
sleep 5











######## template


NTH=20; SUFFIX=""; CELL_TYPE=""
FASTQ1=$DATA/DREAM_challenge_new/
FASTQ2=$DATA/DREAM_challenge_new/
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (40M)!
sleep 5

NTH=20; SUFFIX=""; CELL_TYPE=""
FASTQ1_1=$DATA/DREAM_challenge_new/
FASTQ1_2=$DATA/DREAM_challenge_new/
FASTQ2_1=$DATA/DREAM_challenge_new/
FASTQ2_2=$DATA/DREAM_challenge_new/
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_new/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5


















################### TEST

NTH=20; SUFFIX="CHIPseq.ATF3.K562.EXPID_ENCSR028UIU"; CELL_TYPE="K562"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS734NZL.BSREP1.TECHREP1.FILEIDENCFF457RYN.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS734NZL.BSREP1.TECHREP1.FILEIDENCFF126JWD.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS320BUL.BSREP2.TECHREP1.FILEIDENCFF367HUF.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS320BUL.BSREP2.TECHREP1.FILEIDENCFF169CRK.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_test/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -mem_spp 30G -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M

NTH=20; SUFFIX="CHIPseq.ATF3.K562.EXPID_ENCSR028UIU_sambamba"; CELL_TYPE="K562"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS734NZL.BSREP1.TECHREP1.FILEIDENCFF457RYN.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS734NZL.BSREP1.TECHREP1.FILEIDENCFF126JWD.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS320BUL.BSREP2.TECHREP1.FILEIDENCFF367HUF.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.ATF3.K562.EXPID_ENCSR028UIU.BSID_ENCBS320BUL.BSREP2.TECHREP1.FILEIDENCFF169CRK.R2.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_test/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -use_sambamba_markdup -mem_spp 30G -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M









NTH=20; SUFFIX="CHIPseq.JUND.liver.EXPID_ENCSR837GTK"; CELL_TYPE="liver.BSID_ENCBS046RNA"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.JUND.liver.EXPID_ENCSR837GTK.BSID_ENCBS046RNA.BSREP1.TECHREP1.FILEIDENCFF215GBK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.JUND.liver.EXPID_ENCSR837GTK.BSID_ENCBS046RNA.BSREP2.TECHREP1.FILEIDENCFF978CPC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_test/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out



NTH=20; SUFFIX="CHIPseq.JUND.liver.EXPID_ENCSR837GTK_sambamba"; CELL_TYPE="liver.BSID_ENCBS046RNA"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.JUND.liver.EXPID_ENCSR837GTK.BSID_ENCBS046RNA.BSREP1.TECHREP1.FILEIDENCFF215GBK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.JUND.liver.EXPID_ENCSR837GTK.BSID_ENCBS046RNA.BSREP2.TECHREP1.FILEIDENCFF978CPC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_test/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -use_sambamba_markdup -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

NTH=20; SUFFIX="CHIPseq.ATF3.liver.EXPID_ENCSR205FOW"; CELL_TYPE="liver.BSID_ENCBS401URL"
FASTQ1=$DATA/DREAM_challenge_new/CHIPseq.ATF3.liver.EXPID_ENCSR205FOW.BSID_ENCBS401URL.BSREP1.TECHREP1.FILEIDENCFF876KCK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge_new/CHIPseq.ATF3.liver.EXPID_ENCSR205FOW.BSID_ENCBS401URL.BSREP2.TECHREP1.FILEIDENCFF996PYT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge_test/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -nth_1_ctl -subsample_ctl 40000000 -bw_for_pooled_rep_only -no_naive_overlap -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
##SUBSAMPLED CTL (40M)!
sleep 5



NTH=20; SUFFIX="CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS"; CELL_TYPE="MCF-7"
FASTQ1_1=$DATA/DREAM_challenge_new/CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS.BSID_ENCBS670IYV.BSREP1.TECHREP1.FILEIDENCFF220OFM.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge_new/CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS.BSID_ENCBS670IYV.BSREP1.TECHREP1.FILEIDENCFF653KYN.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge_new/CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS.BSID_NOBSID.BSREP2.TECHREP1.FILEIDENCFF804SDU.R2.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge_new/CHIPseq.CREB1.MCF-7.EXPID_ENCSR897JAS.BSID_NOBSID.BSREP2.TECHREP1.FILEIDENCFF841EZY.R1.fastq.gz
CTL_FASTQ_1=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R1.fastq.gz
CTL_FASTQ_2=$DATA/DREAM_challenge/CONTROL.$CELL_TYPE.R2.fastq.gz
WORK=$RUN/DREAM_challenge_test/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc
cd $WORK/out/align; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/align/rep1 ctl1
cd $WORK/out/qc; rm ctl1; ln -s ../../../../DREAM_challenge_ctl/CONTROL.$CELL_TYPE.PE/out/qc/rep1 ctl1
cd $WORK;
bds_scr_5min ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -mem_spp 30G -nth_1_ctl -subsample_ctl 40000000 -species hg19 -bw_for_pooled_rep_only -no_naive_overlap -nth $NTH -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 -ctl_fastq1_1 $CTL_FASTQ_1 -ctl_fastq1_2 $CTL_FASTQ_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out
#SUBSAMPLED 40M
sleep 5

