cd $DATA
ln -s /mnt/data/TF_binding/DREAM_challenge/chipseq/fastqs DREAM_challenge

#1
NTH=1; SUFFIX="CHIPseq.CTCF.cardiac_muscle_cell.EXPID_ENCSR000DTI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.cardiac_muscle_cell.EXPID_ENCSR000DTI.BSID_ENCBS072ENC.BSREP1.TECHREP1.FILEIDENCFF001HKU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.cardiac_muscle_cell.EXPID_ENCSR000DTI.BSID_ENCBS072ENC.BSREP2.TECHREP1.FILEIDENCFF001HKV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.cardiac_muscle_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#2
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_skin_of_abdomen.EXPID_ENCSR000DPV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_skin_of_abdomen.EXPID_ENCSR000DPV.BSID_ENCBS408ENC.BSREP1.TECHREP1.FILEIDENCFF001GYP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_skin_of_abdomen.EXPID_ENCSR000DPV.BSID_ENCBS408ENC.BSREP2.TECHREP1.FILEIDENCFF001GYQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_skin_of_abdomen.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#3
NTH=1; SUFFIX="CHIPseq.EP300.GM12878.EXPID_ENCSR000BHB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000BHB.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NZG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000BHB.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NZH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#4
NTH=1; SUFFIX="CHIPseq.REST.Panc1.EXPID_ENCSR000BJO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BJO.BSID_ENCBS425ENC.BSREP1.TECHREP1.FILEIDENCFF000QSN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BJO.BSID_ENCBS425ENC.BSREP2.TECHREP1.FILEIDENCFF000QST.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#5
NTH=1; SUFFIX="CHIPseq.CTCF.Ishikawa.EXPID_ENCSR000BQE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.Ishikawa.EXPID_ENCSR000BQE.BSID_ENCBS312UTV.BSREP1.TECHREP1.FILEIDENCFF000NKT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.Ishikawa.EXPID_ENCSR000BQE.BSID_ENCBS312UTV.BSREP2.TECHREP1.FILEIDENCFF000NKZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Ishikawa.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#6
NTH=1; SUFFIX="CHIPseq.SIN3A.HCT116.EXPID_ENCSR000BSG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.HCT116.EXPID_ENCSR000BSG.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PCD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.HCT116.EXPID_ENCSR000BSG.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PCE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#7
NTH=1; SUFFIX="CHIPseq.TEAD4.SK-N-SH.EXPID_ENCSR000BUQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.SK-N-SH.EXPID_ENCSR000BUQ.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000REC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.SK-N-SH.EXPID_ENCSR000BUQ.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000REI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#8
NTH=1; SUFFIX="CHIPseq.HNF4A.HepG2.EXPID_ENCSR000BLF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.HNF4A.HepG2.EXPID_ENCSR000BLF.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PJT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.HNF4A.HepG2.EXPID_ENCSR000BLF.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PJX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#9
NTH=1; SUFFIX="CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000EHV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000EHV.BSID_ENCBS376ENC.BSREP1.TECHREP1.FILEIDENCFF000ZRV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000EHV.BSID_ENCBS376ENC.BSREP2.TECHREP1.FILEIDENCFF000ZRX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#10
NTH=1; SUFFIX="CHIPseq.TCF7L2.HepG2.EXPID_ENCSR000EVQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HepG2.EXPID_ENCSR000EVQ.BSID_ENCBS950MSQ.BSREP1.TECHREP1.FILEIDENCFF000XYV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HepG2.EXPID_ENCSR000EVQ.BSID_ENCBS950MSQ.BSREP2.TECHREP1.FILEIDENCFF000XYX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#11
NTH=1; SUFFIX="CHIPseq.CTCF.A549.EXPID_ENCSR000DYD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DYD.BSID_ENCBS159AAA.BSREP1.TECHREP1.FILEIDENCFF000VPD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DYD.BSID_ENCBS159AAA.BSREP2.TECHREP1.FILEIDENCFF000VPF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#12
NTH=1; SUFFIX="CHIPseq.CTCF.SK-N-SH.EXPID_ENCSR000DXQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.SK-N-SH.EXPID_ENCSR000DXQ.BSID_ENCBS404ENC.BSREP1.TECHREP1.FILEIDENCFF001HXT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.SK-N-SH.EXPID_ENCSR000DXQ.BSID_ENCBS404ENC.BSREP2.TECHREP1.FILEIDENCFF001HXU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#13
NTH=1; SUFFIX="CHIPseq.ATF3.GM12878.EXPID_ENCSR000BJY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.GM12878.EXPID_ENCSR000BJY.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NSI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.GM12878.EXPID_ENCSR000BJY.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NSP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#14
NTH=1; SUFFIX="CHIPseq.MYC.HepG2.EXPID_ENCSR000DLR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.HepG2.EXPID_ENCSR000DLR.BSID_ENCBS773AAA.BSREP1.TECHREP1.FILEIDENCFF000RTY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.HepG2.EXPID_ENCSR000DLR.BSID_ENCBS773AAA.BSREP2.TECHREP1.FILEIDENCFF000RTX.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.MYC.HepG2.EXPID_ENCSR000DLR.BSID_ENCBS773AAA.BSREP3.TECHREP1.FILEIDENCFF000RTV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#15
NTH=1; SUFFIX="CHIPseq.CTCF.CD14-positive_monocyte.EXPID_ENCSR000ATN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.CD14-positive_monocyte.EXPID_ENCSR000ATN.BSID_ENCBS609ENC.BSREP1.TECHREP1.FILEIDENCFF000CCY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.CD14-positive_monocyte.EXPID_ENCSR000ATN.BSID_ENCBS609ENC.BSREP1.TECHREP2.FILEIDENCFF000CCZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.CD14-positive_monocyte.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#16
NTH=1; SUFFIX="CHIPseq.TCF12.MCF-7.EXPID_ENCSR000BUN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.MCF-7.EXPID_ENCSR000BUN.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QRV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.MCF-7.EXPID_ENCSR000BUN.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QRU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#17
NTH=1; SUFFIX="CHIPseq.CEBPB.H1-hESC.EXPID_ENCSR000EBV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.H1-hESC.EXPID_ENCSR000EBV.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WRB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.H1-hESC.EXPID_ENCSR000EBV.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WRD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#18
NTH=1; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DWH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DWH.BSID_ENCBS241AAA.BSREP2.TECHREP1.FILEIDENCFF001HUF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DWH.BSID_ENCBS748WRO.BSREP1.TECHREP1.FILEIDENCFF001HUG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#19
NTH=1; SUFFIX="CHIPseq.SPI1.HL-60.EXPID_ENCSR000BUW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SPI1.HL-60.EXPID_ENCSR000BUW.BSID_ENCBS070ENC.BSREP1.TECHREP1.FILEIDENCFF000PUS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SPI1.HL-60.EXPID_ENCSR000BUW.BSID_ENCBS070ENC.BSREP2.TECHREP1.FILEIDENCFF000PUT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HL-60.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#20
NTH=1; SUFFIX="CHIPseq.CTCF.retinal_pigment_epithelial_cell.EXPID_ENCSR000DVI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.retinal_pigment_epithelial_cell.EXPID_ENCSR000DVI.BSID_ENCBS420ENC.BSREP1.TECHREP1.FILEIDENCFF001HSF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.retinal_pigment_epithelial_cell.EXPID_ENCSR000DVI.BSID_ENCBS420ENC.BSREP2.TECHREP1.FILEIDENCFF001HRY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.retinal_pigment_epithelial_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#21
NTH=1; SUFFIX="CHIPseq.CTCF.GM13976.EXPID_ENCSR000DKZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM13976.EXPID_ENCSR000DKZ.BSID_ENCBS220AAA.BSREP1.TECHREP1.FILEIDENCFF000RQF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM13976.EXPID_ENCSR000DKZ.BSID_ENCBS220AAA.BSREP2.TECHREP1.FILEIDENCFF000RQK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM13976.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#22
NTH=1; SUFFIX="CHIPseq.CTCF.A549.EXPID_ENCSR000DNA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DNA.BSID_ENCBS162AAA.BSREP1.TECHREP1.FILEIDENCFF000RMB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DNA.BSID_ENCBS162AAA.BSREP2.TECHREP1.FILEIDENCFF000RMC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#23
NTH=1; SUFFIX="CHIPseq.CEBPB.HeLa-S3.EXPID_ENCSR000EDA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.HeLa-S3.EXPID_ENCSR000EDA.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XBO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.HeLa-S3.EXPID_ENCSR000EDA.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XBN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#24
NTH=1; SUFFIX="CHIPseq.ATF2.GM12878.EXPID_ENCSR000BQK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF2.GM12878.EXPID_ENCSR000BQK.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NSE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF2.GM12878.EXPID_ENCSR000BQK.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NSG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#25
NTH=1; SUFFIX="CHIPseq.GABPA.HeLa-S3.EXPID_ENCSR000BHS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.HeLa-S3.EXPID_ENCSR000BHS.BSID_ENCBS113ENC.BSREP1.TECHREP1.FILEIDENCFF000PEH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.HeLa-S3.EXPID_ENCSR000BHS.BSID_ENCBS113ENC.BSREP2.TECHREP1.FILEIDENCFF000PEK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#26
NTH=1; SUFFIX="CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BLZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BLZ.BSID_ENCBS404ENC.BSREP1.TECHREP1.FILEIDENCFF000RGV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BLZ.BSID_ENCBS404ENC.BSREP2.TECHREP1.FILEIDENCFF000RGY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#27
NTH=1; SUFFIX="CHIPseq.MAX.K562.EXPID_ENCSR000EFV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000EFV.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YTF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000EFV.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YTH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#28
NTH=1; SUFFIX="CHIPseq.SRF.K562.EXPID_ENCSR000BLK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.K562.EXPID_ENCSR000BLK.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QHH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.K562.EXPID_ENCSR000BLK.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QHK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#29
NTH=1; SUFFIX="CHIPseq.JUND.HeLa-S3.EXPID_ENCSR000EDH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.HeLa-S3.EXPID_ENCSR000EDH.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XHI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.HeLa-S3.EXPID_ENCSR000EDH.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XHO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#30
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_villous_mesenchyme.EXPID_ENCSR000DVQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_villous_mesenchyme.EXPID_ENCSR000DVQ.BSID_ENCBS332AAA.BSREP1.TECHREP1.FILEIDENCFF001HSW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_villous_mesenchyme.EXPID_ENCSR000DVQ.BSID_ENCBS332AAA.BSREP2.TECHREP1.FILEIDENCFF001HSX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_villous_mesenchyme.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#31
NTH=1; SUFFIX="CHIPseq.MYC.H1-hESC.EXPID_ENCSR000DLI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.H1-hESC.EXPID_ENCSR000DLI.BSID_ENCBS670AAA.BSREP1.TECHREP1.FILEIDENCFF000RSE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#32
NTH=1; SUFFIX="CHIPseq.SPI1.K562.EXPID_ENCSR000BGW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SPI1.K562.EXPID_ENCSR000BGW.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QED.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SPI1.K562.EXPID_ENCSR000BGW.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QEG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#33
NTH=1; SUFFIX="CHIPseq.EP300.MCF-7.EXPID_ENCSR000BTR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.MCF-7.EXPID_ENCSR000BTR.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QPP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.MCF-7.EXPID_ENCSR000BTR.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QPK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#34
NTH=1; SUFFIX="CHIPseq.SIX5.K562.EXPID_ENCSR000BGX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIX5.K562.EXPID_ENCSR000BGX.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QGG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIX5.K562.EXPID_ENCSR000BGX.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QGJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#35
NTH=1; SUFFIX="CHIPseq.CTCF.skeletal_muscle_myoblast.EXPID_ENCSR000ANE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.skeletal_muscle_myoblast.EXPID_ENCSR000ANE.BSID_ENCBS325AAA.BSREP1.TECHREP1.FILEIDENCFF000BKP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.skeletal_muscle_myoblast.EXPID_ENCSR000ANE.BSID_ENCBS325AAA.BSREP1.TECHREP2.FILEIDENCFF000BKS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.skeletal_muscle_myoblast.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#36
NTH=1; SUFFIX="CHIPseq.REST.K562.EXPID_ENCSR000ATM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.K562.EXPID_ENCSR000ATM.BSID_ENCBS674MPN.BSREP1.TECHREP1.FILEIDENCFF001QXC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#37
NTH=1; SUFFIX="CHIPseq.YY1.K562.EXPID_ENCSR000BMH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000BMH.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QKF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000BMH.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QKI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#38
NTH=1; SUFFIX="CHIPseq.ATF3.HCT116.EXPID_ENCSR000BUG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.HCT116.EXPID_ENCSR000BUG.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000OYD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.HCT116.EXPID_ENCSR000BUG.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000OYI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#39
NTH=1; SUFFIX="CHIPseq.TAF1.HepG2.EXPID_ENCSR000BJN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.HepG2.EXPID_ENCSR000BJN.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PRD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.HepG2.EXPID_ENCSR000BJN.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PRB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#40
NTH=1; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000DMA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DMA.BSID_ENCBS775AAA.BSREP1.TECHREP1.FILEIDENCFF000RWH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DMA.BSID_ENCBS775AAA.BSREP2.TECHREP1.FILEIDENCFF000RWK.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DMA.BSID_ENCBS775AAA.BSREP3.TECHREP1.FILEIDENCFF000RWO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#41
NTH=1; SUFFIX="CHIPseq.CTCF.choroid_plexus_epithelial_cell.EXPID_ENCSR000DTL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.choroid_plexus_epithelial_cell.EXPID_ENCSR000DTL.BSID_ENCBS395ENC.BSREP1.TECHREP1.FILEIDENCFF001HLG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.choroid_plexus_epithelial_cell.EXPID_ENCSR000DTL.BSID_ENCBS559KYO.BSREP2.TECHREP1.FILEIDENCFF001HLI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.choroid_plexus_epithelial_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#42
NTH=1; SUFFIX="CHIPseq.CTCF.myotube.EXPID_ENCSR000ANS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.myotube.EXPID_ENCSR000ANS.BSID_ENCBS525ENC.BSREP1.TECHREP1.FILEIDENCFF000BNS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.myotube.EXPID_ENCSR000ANS.BSID_ENCBS525ENC.BSREP1.TECHREP2.FILEIDENCFF000BNU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.myotube.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#43
NTH=1; SUFFIX="CHIPseq.CTCF.GM19240.EXPID_ENCSR000DLF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM19240.EXPID_ENCSR000DLF.BSID_ENCBS510ENC.BSREP1.TECHREP1.FILEIDENCFF000RRK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM19240.EXPID_ENCSR000DLF.BSID_ENCBS510ENC.BSREP2.TECHREP1.FILEIDENCFF000RRN.unpaired.fastq.gz
#NOT FOUND! (SE, CTL)

#44
NTH=1; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMR.BSID_ENCBS017ENC.BSREP1.TECHREP1.FILEIDENCFF000SAY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMR.BSID_ENCBS017ENC.BSREP2.TECHREP1.FILEIDENCFF000SAX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#45
NTH=1; SUFFIX="CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000ECN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000ECN.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XHD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000ECN.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XHF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#46
NTH=1; SUFFIX="CHIPseq.JUND.H1-hESC.EXPID_ENCSR000EBZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.H1-hESC.EXPID_ENCSR000EBZ.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WTF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.H1-hESC.EXPID_ENCSR000EBZ.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WTH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#47
NTH=1; SUFFIX="CHIPseq.CTCF.osteoblast.EXPID_ENCSR000APF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.osteoblast.EXPID_ENCSR000APF.BSID_ENCBS341AAA.BSREP1.TECHREP1.FILEIDENCFF000CVG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.osteoblast.EXPID_ENCSR000APF.BSID_ENCBS341AAA.BSREP1.TECHREP2.FILEIDENCFF000CVF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.osteoblast.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#48
NTH=1; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMV.BSID_ENCBS252AAA.BSREP1.TECHREP1.FILEIDENCFF000RZX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMV.BSID_ENCBS252AAA.BSREP2.TECHREP1.FILEIDENCFF000RZY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#49
NTH=1; SUFFIX="CHIPseq.CTCF.GM12878.EXPID_ENCSR000AKB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000AKB.BSID_ENCBS830CIQ.BSREP1.TECHREP1.FILEIDENCFF000ARV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000AKB.BSID_ENCBS830CIQ.BSREP1.TECHREP2.FILEIDENCFF000ARP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#50
NTH=1; SUFFIX="CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWV.BSID_ENCBS105ENC.BSREP1.TECHREP1.FILEIDENCFF000ZKJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWV.BSID_ENCBS105ENC.BSREP2.TECHREP1.FILEIDENCFF000ZKL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

###################### ABOVE : wotan

#51
NTH=1; SUFFIX="CHIPseq.TEAD4.K562.EXPID_ENCSR000BRK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.K562.EXPID_ENCSR000BRK.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QIS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.K562.EXPID_ENCSR000BRK.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QIW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#52
NTH=1; SUFFIX="CHIPseq.MAX.GM12878.EXPID_ENCSR000DZF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.GM12878.EXPID_ENCSR000DZF.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VXY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.GM12878.EXPID_ENCSR000DZF.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VYA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#53
NTH=1; SUFFIX="CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWS.BSID_ENCBS105ENC.BSREP1.TECHREP1.FILEIDENCFF000ZLE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWS.BSID_ENCBS105ENC.BSREP2.TECHREP1.FILEIDENCFF000ZKT.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000EWS.BSID_ENCBS105ENC.BSREP2.TECHREP1.FILEIDENCFF000ZKV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#54
NTH=1; SUFFIX="CHIPseq.CTCF.cardiac_fibroblast.EXPID_ENCSR000DTF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.cardiac_fibroblast.EXPID_ENCSR000DTF.BSID_ENCBS307AAA.BSREP1.TECHREP1.FILEIDENCFF001HKO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.cardiac_fibroblast.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#55
NTH=1; SUFFIX="CHIPseq.TBP.K562.EXPID_ENCSR000EHA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.K562.EXPID_ENCSR000EHA.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000ZCA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.K562.EXPID_ENCSR000EHA.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000ZBZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#56
NTH=1; SUFFIX="CHIPseq.BCL3.GM12878.EXPID_ENCSR000BNQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.BCL3.GM12878.EXPID_ENCSR000BNQ.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NTN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.BCL3.GM12878.EXPID_ENCSR000BNQ.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NTL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#57
NTH=1; SUFFIX="CHIPseq.JUND.H1-hESC.EXPID_ENCSR000BKP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.H1-hESC.EXPID_ENCSR000BKP.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OPS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.H1-hESC.EXPID_ENCSR000BKP.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OPZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#58
NTH=1; SUFFIX="CHIPseq.TAF1.K562.EXPID_ENCSR000BKS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.K562.EXPID_ENCSR000BKS.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QHU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.K562.EXPID_ENCSR000BKS.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QHW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#59
NTH=1; SUFFIX="CHIPseq.SIX5.H1-hESC.EXPID_ENCSR000BIQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIX5.H1-hESC.EXPID_ENCSR000BIQ.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OTO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIX5.H1-hESC.EXPID_ENCSR000BIQ.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OTR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#60
NTH=1; SUFFIX="CHIPseq.YY1.K562.EXPID_ENCSR000BKU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000BKU.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QKK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000BKU.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QKJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#61
NTH=1; SUFFIX="CHIPseq.CTCF.GM12878.EXPID_ENCSR000DZN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DZN.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VUW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DZN.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VUU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#62
NTH=1; SUFFIX="CHIPseq.CEBPB.K562.EXPID_ENCSR000BRQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR000BRQ.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PXH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR000BRQ.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PXC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#63
NTH=1; SUFFIX="CHIPseq.EGR1.GM12878.EXPID_ENCSR000BRG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.GM12878.EXPID_ENCSR000BRG.BSID_ENCBS110ENC.BSREP3.TECHREP1.FILEIDENCFF000NVB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#64
NTH=1; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DML"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DML.BSID_ENCBS251AAA.BSREP1.TECHREP1.FILEIDENCFF000SAO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DML.BSID_ENCBS251AAA.BSREP2.TECHREP1.FILEIDENCFF000SAP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#65
NTH=1; SUFFIX="CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000AOA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000AOA.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000BAS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000AOA.BSID_ENCBS637AAA.BSREP1.TECHREP2.FILEIDENCFF000BAT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

###################### ABOVE : kadru


#66
NTH=1; SUFFIX="CHIPseq.ARID3A.HepG2.EXPID_ENCSR000EDP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ARID3A.HepG2.EXPID_ENCSR000EDP.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XOS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ARID3A.HepG2.EXPID_ENCSR000EDP.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XOU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#67
NTH=1; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMO.BSID_ENCBS252AAA.BSREP1.TECHREP1.FILEIDENCFF000SAK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000DMO.BSID_ENCBS252AAA.BSREP2.TECHREP1.FILEIDENCFF000SAL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#68
NTH=1; SUFFIX="CHIPseq.MYC.K562.EXPID_ENCSR000EGJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000EGJ.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YKO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000EGJ.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YKR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#69
NTH=1; SUFFIX="CHIPseq.REST.HepG2.EXPID_ENCSR000BJL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HepG2.EXPID_ENCSR000BJL.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PMK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HepG2.EXPID_ENCSR000BJL.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PMN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#70
NTH=1; SUFFIX="CHIPseq.MAFK.HepG2.EXPID_ENCSR000EDZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.HepG2.EXPID_ENCSR000EDZ.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XUU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.HepG2.EXPID_ENCSR000EDZ.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XVK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#71
NTH=1; SUFFIX="CHIPseq.CTCF.GM12878.EXPID_ENCSR000DRZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DRZ.BSID_ENCBS195XMM.BSREP1.TECHREP1.FILEIDENCFF001HHX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DRZ.BSID_ENCBS195XMM.BSREP2.TECHREP1.FILEIDENCFF001HIA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#72
NTH=1; SUFFIX="CHIPseq.JUND.HepG2.EXPID_ENCSR000EEI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.HepG2.EXPID_ENCSR000EEI.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XTR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.HepG2.EXPID_ENCSR000EEI.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XTQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#73
NTH=1; SUFFIX="CHIPseq.RCOR1.HeLa-S3.EXPID_ENCSR000ECM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.HeLa-S3.EXPID_ENCSR000ECM.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XCO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.HeLa-S3.EXPID_ENCSR000ECM.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XCQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#74
NTH=1; SUFFIX="CHIPseq.MAX.A549.EXPID_ENCSR000DYG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.A549.EXPID_ENCSR000DYG.BSID_ENCBS159AAA.BSREP1.TECHREP1.FILEIDENCFF000VPS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.A549.EXPID_ENCSR000DYG.BSID_ENCBS159AAA.BSREP2.TECHREP1.FILEIDENCFF000VPU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#75
NTH=1; SUFFIX="CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DUB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DUB.BSID_ENCBS432ENC.BSREP1.TECHREP1.FILEIDENCFF001HNI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DUB.BSID_ENCBS432ENC.BSREP2.TECHREP1.FILEIDENCFF001HNP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#76
NTH=1; SUFFIX="CHIPseq.EP300.H1-hESC.EXPID_ENCSR000AUQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.H1-hESC.EXPID_ENCSR000AUQ.BSID_ENCBS380OBH.BSREP1.TECHREP1.FILEIDENCFF000AZO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#77
NTH=1; SUFFIX="CHIPseq.TCF7L2.HCT116.EXPID_ENCSR000EUV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HCT116.EXPID_ENCSR000EUV.BSID_ENCBS409MTT.BSREP1.TECHREP1.FILEIDENCFF000WXH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HCT116.EXPID_ENCSR000EUV.BSID_ENCBS409MTT.BSREP2.TECHREP1.FILEIDENCFF000WXJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#78
NTH=1; SUFFIX="CHIPseq.FOSL2.SK-N-SH.EXPID_ENCSR000BVB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOSL2.SK-N-SH.EXPID_ENCSR000BVB.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QYA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOSL2.SK-N-SH.EXPID_ENCSR000BVB.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QYD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#79
NTH=1; SUFFIX="CHIPseq.TCF12.H1-hESC.EXPID_ENCSR000BIT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.H1-hESC.EXPID_ENCSR000BIT.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OVP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.H1-hESC.EXPID_ENCSR000BIT.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OVN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#80
NTH=1; SUFFIX="CHIPseq.MAFK.GM12878.EXPID_ENCSR000DYV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.GM12878.EXPID_ENCSR000DYV.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VXQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.GM12878.EXPID_ENCSR000DYV.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VXS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#81
NTH=1; SUFFIX="CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000BIS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000BIS.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OTG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000BIS.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OTJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#82
NTH=1; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000AKO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000AKO.BSID_ENCBS639AAA.BSREP1.TECHREP1.FILEIDENCFF000BWM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000AKO.BSID_ENCBS639AAA.BSREP1.TECHREP2.FILEIDENCFF000BWR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#83
NTH=1; SUFFIX="CHIPseq.SIX5.GM12878.EXPID_ENCSR000BJE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIX5.GM12878.EXPID_ENCSR000BJE.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OEQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIX5.GM12878.EXPID_ENCSR000BJE.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OEP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#84
NTH=1; SUFFIX="CHIPseq.CTCF.mammary_epithelial_cell.EXPID_ENCSR000DUS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.mammary_epithelial_cell.EXPID_ENCSR000DUS.BSID_ENCBS090ENC.BSREP1.TECHREP1.FILEIDENCFF001HPM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.mammary_epithelial_cell.EXPID_ENCSR000DUS.BSID_ENCBS090ENC.BSREP2.TECHREP1.FILEIDENCFF001HPL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.mammary_epithelial_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#85
NTH=1; SUFFIX="CHIPseq.YY1.GM12891.EXPID_ENCSR000BKJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.GM12891.EXPID_ENCSR000BKJ.BSID_ENCBS388ENC.BSREP1.TECHREP1.FILEIDENCFF000OKL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.GM12891.EXPID_ENCSR000BKJ.BSID_ENCBS388ENC.BSREP2.TECHREP1.FILEIDENCFF000OKM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12891.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

###################### ABOVE : kali

#86
NTH=1; SUFFIX="CHIPseq.CTCF.GM12865.EXPID_ENCSR000DRE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12865.EXPID_ENCSR000DRE.BSID_ENCBS209AAA.BSREP1.TECHREP1.FILEIDENCFF001HCQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12865.EXPID_ENCSR000DRE.BSID_ENCBS209AAA.BSREP2.TECHREP1.FILEIDENCFF001HCR.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12865.EXPID_ENCSR000DRE.BSID_ENCBS209AAA.BSREP3.TECHREP1.FILEIDENCFF001HCS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12865.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#87
NTH=1; SUFFIX="CHIPseq.MAX.K562.EXPID_ENCSR000FAE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000FAE.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YTY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000FAE.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YTX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#88
NTH=1; SUFFIX="CHIPseq.E2F6.H1-hESC.EXPID_ENCSR000BSI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.H1-hESC.EXPID_ENCSR000BSI.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OOD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.H1-hESC.EXPID_ENCSR000BSI.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OOL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#89
NTH=1; SUFFIX="CHIPseq.MYC.K562.EXPID_ENCSR000DLZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000DLZ.BSID_ENCBS775AAA.BSREP1.TECHREP1.FILEIDENCFF000RWD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000DLZ.BSID_ENCBS775AAA.BSREP2.TECHREP1.FILEIDENCFF000RWE.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000DLZ.BSID_ENCBS775AAA.BSREP3.TECHREP1.FILEIDENCFF000RWG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#90
NTH=1; SUFFIX="CHIPseq.CTCF.Caco-2.EXPID_ENCSR000DQN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.Caco-2.EXPID_ENCSR000DQN.BSID_ENCBS391ENC.BSREP1.TECHREP1.FILEIDENCFF001HAI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.Caco-2.EXPID_ENCSR000DQN.BSID_ENCBS391ENC.BSREP2.TECHREP1.FILEIDENCFF001HAJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Caco-2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#91
NTH=1; SUFFIX="CHIPseq.CTCF.HL-60.EXPID_ENCSR000DUP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HL-60.EXPID_ENCSR000DUP.BSID_ENCBS069ENC.BSREP1.TECHREP1.FILEIDENCFF001HPF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HL-60.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#92
NTH=1; SUFFIX="CHIPseq.CTCF.HFF-Myc.EXPID_ENCSR000DUM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HFF-Myc.EXPID_ENCSR000DUM.BSID_ENCBS411AMC.BSREP1.TECHREP1.FILEIDENCFF001HOQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HFF-Myc.EXPID_ENCSR000DUM.BSID_ENCBS553ENC.BSREP2.TECHREP1.FILEIDENCFF001HOR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HFF-Myc.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#93
NTH=1; SUFFIX="CHIPseq.MAX.HepG2.EXPID_ENCSR000EDS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HepG2.EXPID_ENCSR000EDS.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XUF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HepG2.EXPID_ENCSR000EDS.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XUH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#94
NTH=1; SUFFIX="CHIPseq.TCF7L2.MCF-7.EXPID_ENCSR000EWT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.MCF-7.EXPID_ENCSR000EWT.BSID_ENCBS105ENC.BSREP1.TECHREP1.FILEIDENCFF000ZLK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.MCF-7.EXPID_ENCSR000EWT.BSID_ENCBS105ENC.BSREP2.TECHREP1.FILEIDENCFF000ZLM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#95
NTH=1; SUFFIX="CHIPseq.CTCF.H54.EXPID_ENCSR000DKN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.H54.EXPID_ENCSR000DKN.BSID_ENCBS173AAA.BSREP1.TECHREP1.FILEIDENCFF000RNB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.H54.EXPID_ENCSR000DKN.BSID_ENCBS173AAA.BSREP2.TECHREP1.FILEIDENCFF000RND.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H54.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#96
NTH=1; SUFFIX="CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000ALA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000ALA.BSID_ENCBS717AAA.BSREP1.TECHREP1.FILEIDENCFF000BRG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000ALA.BSID_ENCBS717AAA.BSREP1.TECHREP2.FILEIDENCFF000BRD.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000ALA.BSID_ENCBS717AAA.BSREP1.TECHREP3.FILEIDENCFF000BQY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#97
NTH=1; SUFFIX="CHIPseq.EP300.HeLa-S3.EXPID_ENCSR000ECV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.HeLa-S3.EXPID_ENCSR000ECV.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XJM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.HeLa-S3.EXPID_ENCSR000ECV.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XJN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#98
NTH=1; SUFFIX="CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVE.BSID_ENCBS500SDW.BSREP1.TECHREP1.FILEIDENCFF000XML.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVE.BSID_ENCBS500SDW.BSREP2.TECHREP1.FILEIDENCFF000XMN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#99
NTH=1; SUFFIX="CHIPseq.RFX5.HeLa-S3.EXPID_ENCSR000ECX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.HeLa-S3.EXPID_ENCSR000ECX.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XKT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.HeLa-S3.EXPID_ENCSR000ECX.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XKU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#100
NTH=1; SUFFIX="CHIPseq.CTCF.kidney.EXPID_ENCSR000DMC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.kidney.EXPID_ENCSR000DMC.BSID_ENCBS136AAA.BSREP1.TECHREP1.FILEIDENCFF000RXE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.kidney.EXPID_ENCSR000DMC.BSID_ENCBS137AAA.BSREP3.TECHREP1.FILEIDENCFF000RXV.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.kidney.EXPID_ENCSR000DMC.BSID_ENCBS349AAA.BSREP2.TECHREP1.FILEIDENCFF000RXM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.kidney.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#101
NTH=1; SUFFIX="CHIPseq.E2F6.K562.EXPID_ENCSR000EWJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.K562.EXPID_ENCSR000EWJ.BSID_ENCBS667AAA.BSREP1.TECHREP1.FILEIDENCFF000YNL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.K562.EXPID_ENCSR000EWJ.BSID_ENCBS667AAA.BSREP2.TECHREP1.FILEIDENCFF000YMU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#102
NTH=1; SUFFIX="CHIPseq.CTCF.GM12864.EXPID_ENCSR000DRB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12864.EXPID_ENCSR000DRB.BSID_ENCBS208AAA.BSREP1.TECHREP1.FILEIDENCFF001HBV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12864.EXPID_ENCSR000DRB.BSID_ENCBS208AAA.BSREP2.TECHREP1.FILEIDENCFF001HCC.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12864.EXPID_ENCSR000DRB.BSID_ENCBS208AAA.BSREP3.TECHREP1.FILEIDENCFF001HCB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12864.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#103
NTH=1; SUFFIX="CHIPseq.JUND.HepG2.EXPID_ENCSR000BGK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.HepG2.EXPID_ENCSR000BGK.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PKK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.HepG2.EXPID_ENCSR000BGK.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PKR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#104
NTH=1; SUFFIX="CHIPseq.EGR1.HCT116.EXPID_ENCSR000BRZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.HCT116.EXPID_ENCSR000BRZ.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000OZI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.HCT116.EXPID_ENCSR000BRZ.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000OZL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#105
NTH=1; SUFFIX="CHIPseq.TCF12.HepG2.EXPID_ENCSR000BJG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.HepG2.EXPID_ENCSR000BJG.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PRJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.HepG2.EXPID_ENCSR000BJG.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PRL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#106
NTH=1; SUFFIX="CHIPseq.CTCF.epithelial_cell_of_esophagus.EXPID_ENCSR000DTR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.epithelial_cell_of_esophagus.EXPID_ENCSR000DTR.BSID_ENCBS405ENC.BSREP1.TECHREP1.FILEIDENCFF001HMK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.epithelial_cell_of_esophagus.EXPID_ENCSR000DTR.BSID_ENCBS405ENC.BSREP2.TECHREP1.FILEIDENCFF001HMI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.epithelial_cell_of_esophagus.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#107
NTH=1; SUFFIX="CHIPseq.TAF1.H1-hESC.EXPID_ENCSR000BHO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.H1-hESC.EXPID_ENCSR000BHO.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OVB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.H1-hESC.EXPID_ENCSR000BHO.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OVC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#108
NTH=1; SUFFIX="CHIPseq.E2F6.K562.EXPID_ENCSR000BLI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.K562.EXPID_ENCSR000BLI.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PYZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.K562.EXPID_ENCSR000BLI.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PYX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#109
NTH=1; SUFFIX="CHIPseq.EP300.K562.EXPID_ENCSR000EGE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000EGE.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YVM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000EGE.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YVO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#110
NTH=1; SUFFIX="CHIPseq.REST.Panc1.EXPID_ENCSR000BUP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BUP.BSID_ENCBS425ENC.BSREP1.TECHREP1.FILEIDENCFF000QTA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BUP.BSID_ENCBS425ENC.BSREP2.TECHREP1.FILEIDENCFF000QTD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#111
NTH=1; SUFFIX="CHIPseq.YY1.K562.EXPID_ENCSR000EWF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000EWF.BSID_ENCBS667AAA.BSREP1.TECHREP1.FILEIDENCFF000ZEJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.K562.EXPID_ENCSR000EWF.BSID_ENCBS667AAA.BSREP2.TECHREP1.FILEIDENCFF000ZEK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#112
NTH=1; SUFFIX="CHIPseq.MAX.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000EEZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000EEZ.BSID_ENCBS851AAA.BSREP1.TECHREP1.FILEIDENCFF000YBA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000EEZ.BSID_ENCBS851AAA.BSREP2.TECHREP1.FILEIDENCFF000YBB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#113
NTH=1; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000DWE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DWE.BSID_ENCBS698AAA.BSREP1.TECHREP1.FILEIDENCFF001HTO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000DWE.BSID_ENCBS698AAA.BSREP2.TECHREP1.FILEIDENCFF001HTP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#114
NTH=1; SUFFIX="CHIPseq.MAX.HCT116.EXPID_ENCSR000BSH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HCT116.EXPID_ENCSR000BSH.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PAP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HCT116.EXPID_ENCSR000BSH.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PAQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#115
NTH=1; SUFFIX="CHIPseq.EP300.K562.EXPID_ENCSR000AQB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000AQB.BSID_ENCBS639AAA.BSREP1.TECHREP1.FILEIDENCFF000CAS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000AQB.BSID_ENCBS639AAA.BSREP1.TECHREP2.FILEIDENCFF000CAZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#116
NTH=1; SUFFIX="CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BUA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BUA.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RBI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BUA.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RBC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#117
NTH=1; SUFFIX="CHIPseq.RFX5.K562.EXPID_ENCSR000EGO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.K562.EXPID_ENCSR000EGO.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YYD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.K562.EXPID_ENCSR000EGO.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YYF.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.RFX5.K562.EXPID_ENCSR000EGO.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YYI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#118
NTH=1; SUFFIX="CHIPseq.EP300.K562.EXPID_ENCSR000EGY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000EGY.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YWT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.K562.EXPID_ENCSR000EGY.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YWU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#119
NTH=1; SUFFIX="CHIPseq.CTCF.HCT116.EXPID_ENCSR000DTO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HCT116.EXPID_ENCSR000DTO.BSID_ENCBS409ENC.BSREP1.TECHREP1.FILEIDENCFF001HLV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HCT116.EXPID_ENCSR000DTO.BSID_ENCBS409ENC.BSREP2.TECHREP1.FILEIDENCFF001HLW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#120
NTH=1; SUFFIX="CHIPseq.CTCF.GM19238.EXPID_ENCSR000DLD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM19238.EXPID_ENCSR000DLD.BSID_ENCBS509ENC.BSREP1.TECHREP1.FILEIDENCFF000RQV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM19238.EXPID_ENCSR000DLD.BSID_ENCBS509ENC.BSREP2.TECHREP1.FILEIDENCFF000RQW.unpaired.fastq.gz
#NOT FOUND! (SE, CTL)

#121
NTH=1; SUFFIX="CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BSM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BSM.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000REX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.SK-N-SH.EXPID_ENCSR000BSM.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000REZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#122
NTH=1; SUFFIX="CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000DLK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000DLK.BSID_ENCBS670AAA.BSREP1.TECHREP1.FILEIDENCFF000RSJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#123
NTH=1; SUFFIX="CHIPseq.SRF.GM12878.EXPID_ENCSR000BGE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.GM12878.EXPID_ENCSR000BGE.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OFM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.GM12878.EXPID_ENCSR000BGE.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OFK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#124
NTH=1; SUFFIX="CHIPseq.JUND.K562.EXPID_ENCSR000DJX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000DJX.BSID_ENCBS349TGF.BSREP2.TECHREP1.FILEIDENCFF000ZVC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000DJX.BSID_ENCBS770RPE.BSREP1.TECHREP1.FILEIDENCFF000ZUU.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000DJX.BSID_ENCBS919IGK.BSREP3.TECHREP1.FILEIDENCFF000ZVD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#125
NTH=1; SUFFIX="CHIPseq.TEAD4.MCF-7.EXPID_ENCSR000BUO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.MCF-7.EXPID_ENCSR000BUO.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QSI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.MCF-7.EXPID_ENCSR000BUO.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QSB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#126
NTH=1; SUFFIX="CHIPseq.MAX.K562.EXPID_ENCSR000BLP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000BLP.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QBZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.K562.EXPID_ENCSR000BLP.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QCC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#127
NTH=1; SUFFIX="CHIPseq.MAFK.K562.EXPID_ENCSR000EGX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.K562.EXPID_ENCSR000EGX.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YUE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.K562.EXPID_ENCSR000EGX.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YUC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#128
NTH=1; SUFFIX="CHIPseq.FOSL2.HepG2.EXPID_ENCSR000BHP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOSL2.HepG2.EXPID_ENCSR000BHP.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PIE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOSL2.HepG2.EXPID_ENCSR000BHP.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PHU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#129
NTH=1; SUFFIX="CHIPseq.YY1.GM12878.EXPID_ENCSR000BNP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.GM12878.EXPID_ENCSR000BNP.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OHH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.GM12878.EXPID_ENCSR000BNP.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OHO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#130
NTH=1; SUFFIX="CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BLE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BLE.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PIJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BLE.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PIM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#131
NTH=1; SUFFIX="CHIPseq.GATA3.A549.EXPID_ENCSR000BTI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.A549.EXPID_ENCSR000BTI.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000NBH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.A549.EXPID_ENCSR000BTI.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000NBM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#132
NTH=1; SUFFIX="CHIPseq.ATF2.H1-hESC.EXPID_ENCSR000BQU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF2.H1-hESC.EXPID_ENCSR000BQU.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OMR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF2.H1-hESC.EXPID_ENCSR000BQU.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OMY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#133
NTH=1; SUFFIX="CHIPseq.CTCF.HepG2.EXPID_ENCSR000AMA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000AMA.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000BED.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000AMA.BSID_ENCBS638AAA.BSREP1.TECHREP2.FILEIDENCFF000BEI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#134
NTH=1; SUFFIX="CHIPseq.CTCF.GM20000.EXPID_ENCSR000DLG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM20000.EXPID_ENCSR000DLG.BSID_ENCBS223AAA.BSREP1.TECHREP1.FILEIDENCFF000RRR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM20000.EXPID_ENCSR000DLG.BSID_ENCBS223AAA.BSREP2.TECHREP1.FILEIDENCFF000RRS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM20000.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#135
NTH=1; SUFFIX="CHIPseq.SIN3A.SK-N-SH.EXPID_ENCSR000BPB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.SK-N-SH.EXPID_ENCSR000BPB.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RDJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.SK-N-SH.EXPID_ENCSR000BPB.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RDL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#136
NTH=1; SUFFIX="CHIPseq.GABPA.HepG2.EXPID_ENCSR000BJK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.HepG2.EXPID_ENCSR000BJK.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PJF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.HepG2.EXPID_ENCSR000BJK.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PJC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#137
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_dermis.EXPID_ENCSR000APM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_dermis.EXPID_ENCSR000APM.BSID_ENCBS337AAA.BSREP1.TECHREP1.FILEIDENCFF000CJC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_dermis.EXPID_ENCSR000APM.BSID_ENCBS337AAA.BSREP1.TECHREP2.FILEIDENCFF000CJD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_dermis.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#138
NTH=1; SUFFIX="CHIPseq.E2F6.A549.EXPID_ENCSR000BTC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.A549.EXPID_ENCSR000BTC.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000MYX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.A549.EXPID_ENCSR000BTC.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000MYY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#139
NTH=1; SUFFIX="CHIPseq.EGR1.GM12878.EXPID_ENCSR000BMQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.GM12878.EXPID_ENCSR000BMQ.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NVC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.GM12878.EXPID_ENCSR000BMQ.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NVF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#140
NTH=1; SUFFIX="CHIPseq.TAF1.GM12878.EXPID_ENCSR000BGS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12878.EXPID_ENCSR000BGS.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OGC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12878.EXPID_ENCSR000BGS.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OGH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#141
NTH=1; SUFFIX="CHIPseq.RCOR1.HepG2.EXPID_ENCSR000EDQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.HepG2.EXPID_ENCSR000EDQ.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XQW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.HepG2.EXPID_ENCSR000EDQ.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XQY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#142
NTH=1; SUFFIX="CHIPseq.CTCF.bronchial_epithelial_cell.EXPID_ENCSR000DXI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.bronchial_epithelial_cell.EXPID_ENCSR000DXI.BSID_ENCBS417ENC.BSREP1.TECHREP1.FILEIDENCFF001HXB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.bronchial_epithelial_cell.EXPID_ENCSR000DXI.BSID_ENCBS417ENC.BSREP2.TECHREP1.FILEIDENCFF001HXA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.bronchial_epithelial_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#143
NTH=1; SUFFIX="CHIPseq.CTCF.NB4.EXPID_ENCSR000DWN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.NB4.EXPID_ENCSR000DWN.BSID_ENCBS390ENC.BSREP1.TECHREP1.FILEIDENCFF001HUW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.NB4.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#144
NTH=1; SUFFIX="CHIPseq.CTCF.BE2C.EXPID_ENCSR000DQD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.BE2C.EXPID_ENCSR000DQD.BSID_ENCBS403ENC.BSREP1.TECHREP1.FILEIDENCFF001GZI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.BE2C.EXPID_ENCSR000DQD.BSID_ENCBS982TUR.BSREP2.TECHREP1.FILEIDENCFF001GZJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.BE2C.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#145
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_gingiva.EXPID_ENCSR000DPS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_gingiva.EXPID_ENCSR000DPS.BSID_ENCBS443ENC.BSREP1.TECHREP1.FILEIDENCFF001GXV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_gingiva.EXPID_ENCSR000DPS.BSID_ENCBS443ENC.BSREP2.TECHREP1.FILEIDENCFF001GXW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_gingiva.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#146
NTH=1; SUFFIX="CHIPseq.REST.GM12878.EXPID_ENCSR000BQS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.GM12878.EXPID_ENCSR000BQS.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NYK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.GM12878.EXPID_ENCSR000BQS.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NYN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#147
NTH=1; SUFFIX="CHIPseq.MAX.A549.EXPID_ENCSR000BTJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.A549.EXPID_ENCSR000BTJ.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000NDP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.A549.EXPID_ENCSR000BTJ.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000NDT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#148
NTH=1; SUFFIX="CHIPseq.MAX.SK-N-SH.EXPID_ENCSR000BVD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.SK-N-SH.EXPID_ENCSR000BVD.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QZN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.SK-N-SH.EXPID_ENCSR000BVD.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QZQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#149
NTH=1; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000BPJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000BPJ.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PYD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000BPJ.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PYJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#150
NTH=1; SUFFIX="CHIPseq.EP300.osteoblast.EXPID_ENCSR000AUD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.osteoblast.EXPID_ENCSR000AUD.BSID_ENCBS341AAA.BSREP1.TECHREP1.FILEIDENCFF000CUT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.osteoblast.EXPID_ENCSR000AUD.BSID_ENCBS341AAA.BSREP1.TECHREP2.FILEIDENCFF000CUU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.osteoblast.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#151
NTH=1; SUFFIX="CHIPseq.STAT3.HeLa-S3.EXPID_ENCSR000EDC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.STAT3.HeLa-S3.EXPID_ENCSR000EDC.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XMQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.STAT3.HeLa-S3.EXPID_ENCSR000EDC.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XMR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#152
NTH=1; SUFFIX="CHIPseq.CEBPB.A549.EXPID_ENCSR000BUB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.A549.EXPID_ENCSR000BUB.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000MXK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.A549.EXPID_ENCSR000BUB.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000MXH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#153
NTH=1; SUFFIX="CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMJ.BSID_ENCBS251AAA.BSREP1.TECHREP1.FILEIDENCFF000RZJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMJ.BSID_ENCBS251AAA.BSREP2.TECHREP1.FILEIDENCFF000RZL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#154
NTH=1; SUFFIX="CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BMA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BMA.BSID_ENCBS404ENC.BSREP1.TECHREP1.FILEIDENCFF000RFU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.SK-N-SH.EXPID_ENCSR000BMA.BSID_ENCBS404ENC.BSREP2.TECHREP1.FILEIDENCFF000RFV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#155
NTH=1; SUFFIX="CHIPseq.YY1.GM12892.EXPID_ENCSR000BLT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.GM12892.EXPID_ENCSR000BLT.BSID_ENCBS055ENC.BSREP1.TECHREP1.FILEIDENCFF000OMI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.GM12892.EXPID_ENCSR000BLT.BSID_ENCBS055ENC.BSREP2.TECHREP1.FILEIDENCFF000OML.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12892.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#156
NTH=1; SUFFIX="CHIPseq.TBP.HeLa-S3.EXPID_ENCSR000EDD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.HeLa-S3.EXPID_ENCSR000EDD.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XMT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.HeLa-S3.EXPID_ENCSR000EDD.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XMS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#157
NTH=1; SUFFIX="CHIPseq.CTCF.IMR-90.EXPID_ENCSR000EFI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.IMR-90.EXPID_ENCSR000EFI.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YCK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.IMR-90.EXPID_ENCSR000EFI.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YCM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#158
NTH=1; SUFFIX="CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMM.BSID_ENCBS252AAA.BSREP1.TECHREP1.FILEIDENCFF000RZE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMM.BSID_ENCBS252AAA.BSREP2.TECHREP1.FILEIDENCFF000RZC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#159
NTH=1; SUFFIX="CHIPseq.GABPA.H1-hESC.EXPID_ENCSR000BIW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.H1-hESC.EXPID_ENCSR000BIW.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OPC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.H1-hESC.EXPID_ENCSR000BIW.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OPF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#160
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_pedal_digit_skin.EXPID_ENCSR000DPP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_pedal_digit_skin.EXPID_ENCSR000DPP.BSID_ENCBS005ENC.BSREP1.TECHREP1.FILEIDENCFF001GXJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_pedal_digit_skin.EXPID_ENCSR000DPP.BSID_ENCBS005ENC.BSREP2.TECHREP1.FILEIDENCFF001GXI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_pedal_digit_skin.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#161
NTH=1; SUFFIX="CHIPseq.MAX.MCF-7.EXPID_ENCSR000BUL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.MCF-7.EXPID_ENCSR000BUL.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QOS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.MCF-7.EXPID_ENCSR000BUL.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QON.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#162
NTH=1; SUFFIX="CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000EZF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000EZF.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XHZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HeLa-S3.EXPID_ENCSR000EZF.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XHY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#163
NTH=1; SUFFIX="CHIPseq.TCF7L2.Panc1.EXPID_ENCSR000EXL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.Panc1.EXPID_ENCSR000EXL.BSID_ENCBS729QZR.BSREP1.TECHREP1.FILEIDENCFF000ZNX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.Panc1.EXPID_ENCSR000EXL.BSID_ENCBS729QZR.BSREP2.TECHREP1.FILEIDENCFF000ZNZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#164
NTH=1; SUFFIX="CHIPseq.REST.HeLa-S3.EXPID_ENCSR000BMN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HeLa-S3.EXPID_ENCSR000BMN.BSID_ENCBS113ENC.BSREP1.TECHREP1.FILEIDENCFF000PEQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HeLa-S3.EXPID_ENCSR000BMN.BSID_ENCBS113ENC.BSREP2.TECHREP1.FILEIDENCFF000PEM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#165
NTH=1; SUFFIX="CHIPseq.REST.K562.EXPID_ENCSR000BMW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.K562.EXPID_ENCSR000BMW.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QCX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.K562.EXPID_ENCSR000BMW.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QCW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#166
NTH=1; SUFFIX="CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DVP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DVP.BSID_ENCBS677AAA.BSREP1.TECHREP1.FILEIDENCFF001HSL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DVP.BSID_ENCBS677AAA.BSREP2.TECHREP1.FILEIDENCFF001HSN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#167
NTH=1; SUFFIX="CHIPseq.FOXA2.HepG2.EXPID_ENCSR000BNI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOXA2.HepG2.EXPID_ENCSR000BNI.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PIT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOXA2.HepG2.EXPID_ENCSR000BNI.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PIX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#168
NTH=1; SUFFIX="CHIPseq.CEBPB.HCT116.EXPID_ENCSR000BSD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.HCT116.EXPID_ENCSR000BSD.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000OYS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.HCT116.EXPID_ENCSR000BSD.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000OYU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#169
NTH=1; SUFFIX="CHIPseq.CREB1.HepG2.EXPID_ENCSR000BVL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CREB1.HepG2.EXPID_ENCSR000BVL.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PGX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CREB1.HepG2.EXPID_ENCSR000BVL.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PGZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#170
NTH=1; SUFFIX="CHIPseq.CREB1.H1-hESC.EXPID_ENCSR000BSN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CREB1.H1-hESC.EXPID_ENCSR000BSN.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000ONS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CREB1.H1-hESC.EXPID_ENCSR000BSN.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000ONP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#171
NTH=1; SUFFIX="CHIPseq.ZNF143.GM12878.EXPID_ENCSR000DZL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ZNF143.GM12878.EXPID_ENCSR000DZL.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WGX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ZNF143.GM12878.EXPID_ENCSR000DZL.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WGW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#172
NTH=1; SUFFIX="CHIPseq.MAX.H1-hESC.EXPID_ENCSR000EUP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.H1-hESC.EXPID_ENCSR000EUP.BSID_ENCBS668AAA.BSREP1.TECHREP1.FILEIDENCFF000WUJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.H1-hESC.EXPID_ENCSR000EUP.BSID_ENCBS668AAA.BSREP2.TECHREP1.FILEIDENCFF000WUH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#173
NTH=1; SUFFIX="CHIPseq.FOSL2.MCF-7.EXPID_ENCSR000BUI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOSL2.MCF-7.EXPID_ENCSR000BUI.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QMU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOSL2.MCF-7.EXPID_ENCSR000BUI.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QMS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#174
NTH=1; SUFFIX="CHIPseq.CTCF.HepG2.EXPID_ENCSR000BIE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000BIE.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PHG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000BIE.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PHE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#175
NTH=1; SUFFIX="CHIPseq.CEBPB.HepG2.EXPID_ENCSR000EEE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.HepG2.EXPID_ENCSR000EEE.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XQM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.HepG2.EXPID_ENCSR000EEE.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XQN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#176
NTH=1; SUFFIX="CHIPseq.RFX5.HepG2.EXPID_ENCSR000EEA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.HepG2.EXPID_ENCSR000EEA.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XXZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.HepG2.EXPID_ENCSR000EEA.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XXX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#177
NTH=1; SUFFIX="CHIPseq.MYC.K562.EXPID_ENCSR000FAG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000FAG.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YMC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.K562.EXPID_ENCSR000FAG.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YMB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#178
NTH=1; SUFFIX="CHIPseq.TAF1.HeLa-S3.EXPID_ENCSR000BHT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.HeLa-S3.EXPID_ENCSR000BHT.BSID_ENCBS113ENC.BSREP1.TECHREP1.FILEIDENCFF000PFL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.HeLa-S3.EXPID_ENCSR000BHT.BSID_ENCBS113ENC.BSREP2.TECHREP1.FILEIDENCFF000PFJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#179
NTH=1; SUFFIX="CHIPseq.EGR1.MCF-7.EXPID_ENCSR000BUX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.MCF-7.EXPID_ENCSR000BUX.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QMF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.MCF-7.EXPID_ENCSR000BUX.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QMC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#180
NTH=1; SUFFIX="CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000AMF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000AMF.BSID_ENCBS718AAA.BSREP1.TECHREP1.FILEIDENCFF000AVS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000AMF.BSID_ENCBS718AAA.BSREP1.TECHREP2.FILEIDENCFF000AVU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#181
NTH=1; SUFFIX="CHIPseq.GABPA.HL-60.EXPID_ENCSR000BTK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.HL-60.EXPID_ENCSR000BTK.BSID_ENCBS070ENC.BSREP1.TECHREP1.FILEIDENCFF000PTV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.HL-60.EXPID_ENCSR000BTK.BSID_ENCBS070ENC.BSREP2.TECHREP1.FILEIDENCFF000PTU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HL-60.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#182
NTH=1; SUFFIX="CHIPseq.SRF.HCT116.EXPID_ENCSR000BSC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.HCT116.EXPID_ENCSR000BSC.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PCS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.HCT116.EXPID_ENCSR000BSC.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PCV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#183
NTH=1; SUFFIX="CHIPseq.CTCF.GM19239.EXPID_ENCSR000DLE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM19239.EXPID_ENCSR000DLE.BSID_ENCBS385ENC.BSREP1.TECHREP1.FILEIDENCFF000RRI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM19239.EXPID_ENCSR000DLE.BSID_ENCBS385ENC.BSREP2.TECHREP1.FILEIDENCFF000RRD.unpaired.fastq.gz
#NOT FOUND! (SE, CTL)

#184
NTH=1; SUFFIX="CHIPseq.STAT3.GM12878.EXPID_ENCSR000DZV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.STAT3.GM12878.EXPID_ENCSR000DZV.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WFK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.STAT3.GM12878.EXPID_ENCSR000DZV.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WFJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#185
NTH=1; SUFFIX="CHIPseq.ZNF143.HeLa-S3.EXPID_ENCSR000ECO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ZNF143.HeLa-S3.EXPID_ENCSR000ECO.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XNV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ZNF143.HeLa-S3.EXPID_ENCSR000ECO.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XNX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#186
NTH=1; SUFFIX="CHIPseq.EGR1.H1-hESC.EXPID_ENCSR000BJA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.H1-hESC.EXPID_ENCSR000BJA.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OOH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.H1-hESC.EXPID_ENCSR000BJA.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OOO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#187
NTH=1; SUFFIX="CHIPseq.GATA3.SK-N-SH.EXPID_ENCSR000BTH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.SK-N-SH.EXPID_ENCSR000BTH.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QYZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.SK-N-SH.EXPID_ENCSR000BTH.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QZA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#188
NTH=1; SUFFIX="CHIPseq.EGR1.K562.EXPID_ENCSR000BNE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EGR1.K562.EXPID_ENCSR000BNE.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PZK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EGR1.K562.EXPID_ENCSR000BNE.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PZP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#189
NTH=1; SUFFIX="CHIPseq.CEBPB.MCF-7.EXPID_ENCSR000BSR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.MCF-7.EXPID_ENCSR000BSR.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QLO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.MCF-7.EXPID_ENCSR000BSR.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QLL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#190
NTH=1; SUFFIX="CHIPseq.YY1.GM12878.EXPID_ENCSR000EUM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.GM12878.EXPID_ENCSR000EUM.BSID_ENCBS446LSH.BSREP1.TECHREP1.FILEIDENCFF000WGS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.GM12878.EXPID_ENCSR000EUM.BSID_ENCBS907LID.BSREP2.TECHREP1.FILEIDENCFF000WGT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#191
NTH=1; SUFFIX="CHIPseq.RCOR1.K562.EXPID_ENCSR000EGG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGG.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YLO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGG.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YLQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#192
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_pulmonary_artery.EXPID_ENCSR000DUX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_pulmonary_artery.EXPID_ENCSR000DUX.BSID_ENCBS321AAA.BSREP2.TECHREP1.FILEIDENCFF001HQM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_pulmonary_artery.EXPID_ENCSR000DUX.BSID_ENCBS769DLJ.BSREP1.TECHREP1.FILEIDENCFF001HQL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_pulmonary_artery.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#193
NTH=1; SUFFIX="CHIPseq.REST.GM12878.EXPID_ENCSR000BGF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.GM12878.EXPID_ENCSR000BGF.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NZA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.GM12878.EXPID_ENCSR000BGF.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NYY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#194
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DVA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DVA.BSID_ENCBS024DYT.BSREP1.TECHREP1.FILEIDENCFF001HRA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DVA.BSID_ENCBS323AAA.BSREP2.TECHREP1.FILEIDENCFF001HQZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_lung.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#195
NTH=1; SUFFIX="CHIPseq.JUND.T47D.EXPID_ENCSR000BVO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.T47D.EXPID_ENCSR000BVO.BSID_ENCBS440ENC.BSREP1.TECHREP1.FILEIDENCFF000RJG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.T47D.EXPID_ENCSR000BVO.BSID_ENCBS440ENC.BSREP2.TECHREP1.FILEIDENCFF000RJM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.T47D.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#196
NTH=1; SUFFIX="CHIPseq.MAX.NB4.EXPID_ENCSR000EHS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.NB4.EXPID_ENCSR000EHS.BSID_ENCBS259AAA.BSREP1.TECHREP1.FILEIDENCFF000ZMN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.NB4.EXPID_ENCSR000EHS.BSID_ENCBS259AAA.BSREP2.TECHREP1.FILEIDENCFF000ZMP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.NB4.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#197
NTH=1; SUFFIX="CHIPseq.RCOR1.K562.EXPID_ENCSR000EGC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGC.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YLC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGC.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YLF.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.RCOR1.K562.EXPID_ENCSR000EGC.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YLH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#198
NTH=1; SUFFIX="CHIPseq.TAF1.MCF-7.EXPID_ENCSR000AHF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.MCF-7.EXPID_ENCSR000AHF.BSID_ENCBS000AAA.BSREP1.TECHREP1.FILEIDENCFF000QRS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.MCF-7.EXPID_ENCSR000AHF.BSID_ENCBS001AAA.BSREP2.TECHREP1.FILEIDENCFF000QRL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#199
NTH=1; SUFFIX="CHIPseq.CTCF.astrocyte_of_the_spinal_cord.EXPID_ENCSR000DSU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.astrocyte_of_the_spinal_cord.EXPID_ENCSR000DSU.BSID_ENCBS302AAA.BSREP1.TECHREP1.FILEIDENCFF001HJI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.astrocyte_of_the_spinal_cord.EXPID_ENCSR000DSU.BSID_ENCBS995OME.BSREP2.TECHREP1.FILEIDENCFF001HJH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.astrocyte_of_the_spinal_cord.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#200
NTH=1; SUFFIX="CHIPseq.CTCF.SK-N-SH.EXPID_ENCSR000BLX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.SK-N-SH.EXPID_ENCSR000BLX.BSID_ENCBS404ENC.BSREP1.TECHREP1.FILEIDENCFF000RFI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.SK-N-SH.EXPID_ENCSR000BLX.BSID_ENCBS404ENC.BSREP2.TECHREP1.FILEIDENCFF000RFO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#201
NTH=1; SUFFIX="CHIPseq.JUND.MCF-7.EXPID_ENCSR000BSU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.MCF-7.EXPID_ENCSR000BSU.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QOB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.MCF-7.EXPID_ENCSR000BSU.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QOD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#202
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_upper_leg_skin.EXPID_ENCSR000DPG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_upper_leg_skin.EXPID_ENCSR000DPG.BSID_ENCBS003ENC.BSREP1.TECHREP1.FILEIDENCFF001GWI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_upper_leg_skin.EXPID_ENCSR000DPG.BSID_ENCBS003ENC.BSREP2.TECHREP1.FILEIDENCFF001GWK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_upper_leg_skin.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#203
NTH=1; SUFFIX="CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000EIB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000EIB.BSID_ENCBS376ENC.BSREP1.TECHREP1.FILEIDENCFF000ZQV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000EIB.BSID_ENCBS376ENC.BSREP2.TECHREP1.FILEIDENCFF000ZQY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#204
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000ANO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000ANO.BSID_ENCBS339AAA.BSREP1.TECHREP1.FILEIDENCFF000CQV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000ANO.BSID_ENCBS339AAA.BSREP1.TECHREP2.FILEIDENCFF000CQU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_lung.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#205
NTH=1; SUFFIX="CHIPseq.CTCF.MCF-7.EXPID_ENCSR000AHD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000AHD.BSID_ENCBS000AAA.BSREP1.TECHREP1.FILEIDENCFF000QLW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.MCF-7.EXPID_ENCSR000AHD.BSID_ENCBS001AAA.BSREP2.TECHREP1.FILEIDENCFF000QLT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#206
NTH=1; SUFFIX="CHIPseq.MYC.H1-hESC.EXPID_ENCSR000EBY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.H1-hESC.EXPID_ENCSR000EBY.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WSD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.H1-hESC.EXPID_ENCSR000EBY.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WSF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#207
NTH=1; SUFFIX="CHIPseq.CTCF.GM12891.EXPID_ENCSR000DKX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12891.EXPID_ENCSR000DKX.BSID_ENCBS384ENC.BSREP1.TECHREP1.FILEIDENCFF000RPR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12891.EXPID_ENCSR000DKX.BSID_ENCBS384ENC.BSREP2.TECHREP1.FILEIDENCFF000RPS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12891.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#208
NTH=1; SUFFIX="CHIPseq.CTCF.K562.EXPID_ENCSR000EGM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000EGM.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YLW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.K562.EXPID_ENCSR000EGM.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YLY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#209
NTH=1; SUFFIX="CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000EZD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000EZD.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XCT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000EZD.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XCV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#210
NTH=1; SUFFIX="CHIPseq.TEAD4.A549.EXPID_ENCSR000BUD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.A549.EXPID_ENCSR000BUD.BSID_ENCBS164AAA.BSREP1.TECHREP1.FILEIDENCFF000NIP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.A549.EXPID_ENCSR000BUD.BSID_ENCBS164AAA.BSREP2.TECHREP1.FILEIDENCFF000NIM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#211
NTH=1; SUFFIX="CHIPseq.GABPA.MCF-7.EXPID_ENCSR000BUK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.MCF-7.EXPID_ENCSR000BUK.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QNK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.MCF-7.EXPID_ENCSR000BUK.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QNJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#212
NTH=1; SUFFIX="CHIPseq.ARID3A.K562.EXPID_ENCSR000EFY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ARID3A.K562.EXPID_ENCSR000EFY.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YEU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ARID3A.K562.EXPID_ENCSR000EFY.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YEW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#213
NTH=1; SUFFIX="CHIPseq.CTCF.HepG2.EXPID_ENCSR000DUG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000DUG.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF001HNT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000DUG.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF001HNU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#214
NTH=1; SUFFIX="CHIPseq.CTCF.HEK293.EXPID_ENCSR000DTW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HEK293.EXPID_ENCSR000DTW.BSID_ENCBS393ENC.BSREP1.TECHREP1.FILEIDENCFF001HNG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HEK293.EXPID_ENCSR000DTW.BSID_ENCBS393ENC.BSREP2.TECHREP1.FILEIDENCFF001HMV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HEK293.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#215
NTH=1; SUFFIX="CHIPseq.E2F6.HeLa-S3.EXPID_ENCSR000EVK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.E2F6.HeLa-S3.EXPID_ENCSR000EVK.BSID_ENCBS500SDW.BSREP1.TECHREP1.FILEIDENCFF000XDN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.E2F6.HeLa-S3.EXPID_ENCSR000EVK.BSID_ENCBS500SDW.BSREP2.TECHREP1.FILEIDENCFF000XDX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#216
NTH=1; SUFFIX="CHIPseq.RFX5.SK-N-SH.EXPID_ENCSR000EHY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.SK-N-SH.EXPID_ENCSR000EHY.BSID_ENCBS376ENC.BSREP1.TECHREP1.FILEIDENCFF000ZSL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.SK-N-SH.EXPID_ENCSR000EHY.BSID_ENCBS376ENC.BSREP2.TECHREP1.FILEIDENCFF000ZSN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#217
NTH=1; SUFFIX="CHIPseq.MAFK.HeLa-S3.EXPID_ENCSR000ECK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.HeLa-S3.EXPID_ENCSR000ECK.BSID_ENCBS637AAA.BSREP1.TECHREP1.FILEIDENCFF000XGV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.HeLa-S3.EXPID_ENCSR000ECK.BSID_ENCBS637AAA.BSREP2.TECHREP1.FILEIDENCFF000XGX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#218
NTH=1; SUFFIX="CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMQ.BSID_ENCBS017ENC.BSREP1.TECHREP1.FILEIDENCFF000RZT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.MCF-7.EXPID_ENCSR000DMQ.BSID_ENCBS017ENC.BSREP2.TECHREP1.FILEIDENCFF000RZV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#219
NTH=1; SUFFIX="CHIPseq.CTCF.epithelial_cell_of_proximal_tubule.EXPID_ENCSR000DXD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.epithelial_cell_of_proximal_tubule.EXPID_ENCSR000DXD.BSID_ENCBS166KRI.BSREP1.TECHREP1.FILEIDENCFF001HWL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.epithelial_cell_of_proximal_tubule.EXPID_ENCSR000DXD.BSID_ENCBS402ENC.BSREP2.TECHREP1.FILEIDENCFF001HWU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.epithelial_cell_of_proximal_tubule.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#220
NTH=1; SUFFIX="CHIPseq.MAX.HepG2.EXPID_ENCSR000BTM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.HepG2.EXPID_ENCSR000BTM.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PKX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.HepG2.EXPID_ENCSR000BTM.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PKZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#221
NTH=1; SUFFIX="CHIPseq.ZNF143.H1-hESC.EXPID_ENCSR000EBW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ZNF143.H1-hESC.EXPID_ENCSR000EBW.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WWC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ZNF143.H1-hESC.EXPID_ENCSR000EBW.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WWE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#222
NTH=1; SUFFIX="CHIPseq.SIN3A.K562.EXPID_ENCSR920BLG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.K562.EXPID_ENCSR920BLG.BSID_ENCBS383VKK.BSREP1.TECHREP1.FILEIDENCFF002EWE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.K562.EXPID_ENCSR920BLG.BSID_ENCBS486UBH.BSREP2.TECHREP1.FILEIDENCFF002EWJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#223
NTH=1; SUFFIX="CHIPseq.CTCF.BJ.EXPID_ENCSR000DQI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.BJ.EXPID_ENCSR000DQI.BSID_ENCBS074ENC.BSREP1.TECHREP1.FILEIDENCFF001GZW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.BJ.EXPID_ENCSR000DQI.BSID_ENCBS074ENC.BSREP2.TECHREP1.FILEIDENCFF001GZX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.BJ.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#224
NTH=1; SUFFIX="CHIPseq.CREB1.K562.EXPID_ENCSR000BSO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CREB1.K562.EXPID_ENCSR000BSO.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PXY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CREB1.K562.EXPID_ENCSR000BSO.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PYC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#225
NTH=1; SUFFIX="CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BMO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BMO.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PIB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOXA1.HepG2.EXPID_ENCSR000BMO.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PHY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#226
NTH=1; SUFFIX="CHIPseq.CTCF.GM10248.EXPID_ENCSR000DKP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM10248.EXPID_ENCSR000DKP.BSID_ENCBS183AAA.BSREP1.TECHREP1.FILEIDENCFF000ROI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM10248.EXPID_ENCSR000DKP.BSID_ENCBS183AAA.BSREP2.TECHREP1.FILEIDENCFF000RNU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM10248.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#227
NTH=1; SUFFIX="CHIPseq.ATF3.H1-hESC.EXPID_ENCSR000BKC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.H1-hESC.EXPID_ENCSR000BKC.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OMW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.H1-hESC.EXPID_ENCSR000BKC.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OMV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#228
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_mammary_gland.EXPID_ENCSR000DUU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_mammary_gland.EXPID_ENCSR000DUU.BSID_ENCBS311AAA.BSREP2.TECHREP1.FILEIDENCFF001HPZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_mammary_gland.EXPID_ENCSR000DUU.BSID_ENCBS399FWJ.BSREP1.TECHREP1.FILEIDENCFF001HPY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_mammary_gland.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#229
NTH=1; SUFFIX="CHIPseq.JUND.GM12878.EXPID_ENCSR000EYV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.GM12878.EXPID_ENCSR000EYV.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VYD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.GM12878.EXPID_ENCSR000EYV.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VYE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#230
NTH=1; SUFFIX="CHIPseq.MYC.GM12878.EXPID_ENCSR000DKU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.GM12878.EXPID_ENCSR000DKU.BSID_ENCBS337LQM.BSREP1.TECHREP1.FILEIDENCFF000ROK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.GM12878.EXPID_ENCSR000DKU.BSID_ENCBS337LQM.BSREP2.TECHREP1.FILEIDENCFF000ROS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#231
NTH=1; SUFFIX="CHIPseq.TBP.H1-hESC.EXPID_ENCSR000ECB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.H1-hESC.EXPID_ENCSR000ECB.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WWI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.H1-hESC.EXPID_ENCSR000ECB.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WWK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#232
NTH=1; SUFFIX="CHIPseq.JUND.HCT116.EXPID_ENCSR000BSA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.HCT116.EXPID_ENCSR000BSA.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PAI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.HCT116.EXPID_ENCSR000BSA.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PAH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#233
NTH=1; SUFFIX="CHIPseq.CTCF.SK-N-SH.EXPID_ENCSR000EIC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.SK-N-SH.EXPID_ENCSR000EIC.BSID_ENCBS376ENC.BSREP1.TECHREP1.FILEIDENCFF000ZQI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.SK-N-SH.EXPID_ENCSR000EIC.BSID_ENCBS376ENC.BSREP2.TECHREP1.FILEIDENCFF000ZQL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#234
NTH=1; SUFFIX="CHIPseq.REST.MCF-7.EXPID_ENCSR000BSP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.MCF-7.EXPID_ENCSR000BSP.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QPH.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.MCF-7.EXPID_ENCSR000BSP.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QPE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#235
NTH=1; SUFFIX="CHIPseq.CTCF.A549.EXPID_ENCSR000DPF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DPF.BSID_ENCBS163AAA.BSREP1.TECHREP1.FILEIDENCFF001GVU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.A549.EXPID_ENCSR000DPF.BSID_ENCBS858LUL.BSREP2.TECHREP1.FILEIDENCFF001GWB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#236
NTH=1; SUFFIX="CHIPseq.CTCF.medulloblastoma.EXPID_ENCSR000DMY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.medulloblastoma.EXPID_ENCSR000DMY.BSID_ENCBS253AAA.BSREP1.TECHREP1.FILEIDENCFF000SCC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.medulloblastoma.EXPID_ENCSR000DMY.BSID_ENCBS253AAA.BSREP2.TECHREP1.FILEIDENCFF000SCF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.medulloblastoma.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#237
NTH=1; SUFFIX="CHIPseq.RCOR1.GM12878.EXPID_ENCSR000DZC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.GM12878.EXPID_ENCSR000DZC.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VTW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.GM12878.EXPID_ENCSR000DZC.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VTY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#238
NTH=1; SUFFIX="CHIPseq.SRF.H1-hESC.EXPID_ENCSR000BIV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.H1-hESC.EXPID_ENCSR000BIV.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OUU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.H1-hESC.EXPID_ENCSR000BIV.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OUX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#239
NTH=1; SUFFIX="CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BJJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BJJ.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RAL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BJJ.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RAO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#240
NTH=1; SUFFIX="CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000ALJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000ALJ.BSID_ENCBS650AAA.BSREP1.TECHREP1.FILEIDENCFF000CMM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000ALJ.BSID_ENCBS650AAA.BSREP1.TECHREP2.FILEIDENCFF000CMF.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000ALJ.BSID_ENCBS650AAA.BSREP1.TECHREP3.FILEIDENCFF000CMG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.keratinocyte.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#241
NTH=1; SUFFIX="CHIPseq.TAF1.GM12891.EXPID_ENCSR000BIM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12891.EXPID_ENCSR000BIM.BSID_ENCBS388ENC.BSREP1.TECHREP1.FILEIDENCFF000OKG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12891.EXPID_ENCSR000BIM.BSID_ENCBS388ENC.BSREP2.TECHREP1.FILEIDENCFF000OKD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12891.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#242
NTH=1; SUFFIX="CHIPseq.MYC.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DLU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DLU.BSID_ENCBS669AAA.BSREP1.TECHREP1.FILEIDENCFF000RVF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#243
NTH=1; SUFFIX="CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BOZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BOZ.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RAT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.SK-N-SH.EXPID_ENCSR000BOZ.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RAW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#244
NTH=1; SUFFIX="CHIPseq.CTCF.B_cell.EXPID_ENCSR000AUV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.B_cell.EXPID_ENCSR000AUV.BSID_ENCBS098ETX.BSREP3.TECHREP1.FILEIDENCFF000AMR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.B_cell.EXPID_ENCSR000AUV.BSID_ENCBS400ARI.BSREP2.TECHREP1.FILEIDENCFF000AMS.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.B_cell.EXPID_ENCSR000AUV.BSID_ENCBS836CYW.BSREP1.TECHREP1.FILEIDENCFF000AMU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.B_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#245
NTH=1; SUFFIX="CHIPseq.CTCF.WERI-Rb-1.EXPID_ENCSR000DXW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.WERI-Rb-1.EXPID_ENCSR000DXW.BSID_ENCBS270AAA.BSREP1.TECHREP1.FILEIDENCFF001HYG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.WERI-Rb-1.EXPID_ENCSR000DXW.BSID_ENCBS270AAA.BSREP2.TECHREP1.FILEIDENCFF001HYR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.WERI-Rb-1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#246
NTH=1; SUFFIX="CHIPseq.CTCF.astrocyte_of_the_cerebellum.EXPID_ENCSR000DSZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.astrocyte_of_the_cerebellum.EXPID_ENCSR000DSZ.BSID_ENCBS115FPY.BSREP1.TECHREP1.FILEIDENCFF001HIV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.astrocyte_of_the_cerebellum.EXPID_ENCSR000DSZ.BSID_ENCBS303AAA.BSREP2.TECHREP1.FILEIDENCFF001HJE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.astrocyte_of_the_cerebellum.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#247
NTH=1; SUFFIX="CHIPseq.ATF3.K562.EXPID_ENCSR000DOG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.K562.EXPID_ENCSR000DOG.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YFV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.K562.EXPID_ENCSR000DOG.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YFW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#248
NTH=1; SUFFIX="CHIPseq.TCF12.GM12878.EXPID_ENCSR000BGZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.GM12878.EXPID_ENCSR000BGZ.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OGQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.GM12878.EXPID_ENCSR000BGZ.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OGN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#249
NTH=1; SUFFIX="CHIPseq.TEAD4.H1-hESC.EXPID_ENCSR000BRY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.H1-hESC.EXPID_ENCSR000BRY.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OWA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.H1-hESC.EXPID_ENCSR000BRY.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OWD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#250
NTH=1; SUFFIX="CHIPseq.TAF1.GM12892.EXPID_ENCSR000BIB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12892.EXPID_ENCSR000BIB.BSID_ENCBS055ENC.BSREP1.TECHREP1.FILEIDENCFF000OMD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.GM12892.EXPID_ENCSR000BIB.BSID_ENCBS055ENC.BSREP2.TECHREP1.FILEIDENCFF000OLZ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12892.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#251
NTH=1; SUFFIX="CHIPseq.TCF7L2.HEK293.EXPID_ENCSR000EUY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HEK293.EXPID_ENCSR000EUY.BSID_ENCBS479AAA.BSREP1.TECHREP1.FILEIDENCFF000WYK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HEK293.EXPID_ENCSR000EUY.BSID_ENCBS479AAA.BSREP2.TECHREP1.FILEIDENCFF000WYN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HEK293.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#252
NTH=1; SUFFIX="CHIPseq.MAFK.H1-hESC.EXPID_ENCSR000EBS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.H1-hESC.EXPID_ENCSR000EBS.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WTN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.H1-hESC.EXPID_ENCSR000EBS.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WTQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#253
NTH=1; SUFFIX="CHIPseq.CEBPB.GM12878.EXPID_ENCSR000BRX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.GM12878.EXPID_ENCSR000BRX.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NUD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.GM12878.EXPID_ENCSR000BRX.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NUB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#254
NTH=1; SUFFIX="CHIPseq.ATF3.K562.EXPID_ENCSR000BNU"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.K562.EXPID_ENCSR000BNU.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000PWC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.K562.EXPID_ENCSR000BNU.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000PWA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#255
NTH=1; SUFFIX="CHIPseq.TCF12.SK-N-SH.EXPID_ENCSR000BSL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF12.SK-N-SH.EXPID_ENCSR000BSL.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000REF.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF12.SK-N-SH.EXPID_ENCSR000BSL.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000REA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#256
NTH=1; SUFFIX="CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DLO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DLO.BSID_ENCBS646PGB.BSREP1.TECHREP1.FILEIDENCFF000RTA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HeLa-S3.EXPID_ENCSR000DLO.BSID_ENCBS646PGB.BSREP2.TECHREP1.FILEIDENCFF000RTC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#257
NTH=1; SUFFIX="CHIPseq.EP300.H1-hESC.EXPID_ENCSR000BKK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.H1-hESC.EXPID_ENCSR000BKK.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OQU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.H1-hESC.EXPID_ENCSR000BKK.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000ORA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#258
NTH=1; SUFFIX="CHIPseq.SIX5.K562.EXPID_ENCSR000BNW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIX5.K562.EXPID_ENCSR000BNW.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QGQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIX5.K562.EXPID_ENCSR000BNW.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QGN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#259
NTH=1; SUFFIX="CHIPseq.TEAD4.HCT116.EXPID_ENCSR000BVJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.HCT116.EXPID_ENCSR000BVJ.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PDC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.HCT116.EXPID_ENCSR000BVJ.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PDE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#260
NTH=1; SUFFIX="CHIPseq.EP300.GM12878.EXPID_ENCSR000DZD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000DZD.BSID_ENCBS588GPN.BSREP2.TECHREP1.FILEIDENCFF000WAO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000DZD.BSID_ENCBS595CWJ.BSREP1.TECHREP1.FILEIDENCFF000WAM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#261
NTH=1; SUFFIX="CHIPseq.MAX.H1-hESC.EXPID_ENCSR000BSJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAX.H1-hESC.EXPID_ENCSR000BSJ.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OQI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAX.H1-hESC.EXPID_ENCSR000BSJ.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OQD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#262
NTH=1; SUFFIX="CHIPseq.RFX5.GM12878.EXPID_ENCSR000DZW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.GM12878.EXPID_ENCSR000DZW.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WDO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.GM12878.EXPID_ENCSR000DZW.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WDK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#263
NTH=1; SUFFIX="CHIPseq.CTCF.brain_microvascular_endothelial_cell.EXPID_ENCSR000DTA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.brain_microvascular_endothelial_cell.EXPID_ENCSR000DTA.BSID_ENCBS304AAA.BSREP1.TECHREP1.FILEIDENCFF001HJX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.brain_microvascular_endothelial_cell.EXPID_ENCSR000DTA.BSID_ENCBS304AAA.BSREP2.TECHREP1.FILEIDENCFF001HJW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.brain_microvascular_endothelial_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#264
NTH=1; SUFFIX="CHIPseq.YY1.H1-hESC.EXPID_ENCSR000BKD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.H1-hESC.EXPID_ENCSR000BKD.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OWS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.H1-hESC.EXPID_ENCSR000BKD.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OWO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#265
NTH=1; SUFFIX="CHIPseq.EP300.HepG2.EXPID_ENCSR000BLW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.HepG2.EXPID_ENCSR000BLW.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PMZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.HepG2.EXPID_ENCSR000BLW.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PNA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#266
NTH=1; SUFFIX="CHIPseq.CREB1.GM12878.EXPID_ENCSR000BUF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CREB1.GM12878.EXPID_ENCSR000BUF.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NUK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CREB1.GM12878.EXPID_ENCSR000BUF.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NUL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#267
NTH=1; SUFFIX="CHIPseq.FOXA1.Ishikawa.EXPID_ENCSR000BKW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.FOXA1.Ishikawa.EXPID_ENCSR000BKW.BSID_ENCBS312UTV.BSREP1.TECHREP1.FILEIDENCFF000NMR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.FOXA1.Ishikawa.EXPID_ENCSR000BKW.BSID_ENCBS312UTV.BSREP2.TECHREP1.FILEIDENCFF000NMT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Ishikawa.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#268
NTH=1; SUFFIX="CHIPseq.CTCF.HCT116.EXPID_ENCSR000BSE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HCT116.EXPID_ENCSR000BSE.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000OYZ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HCT116.EXPID_ENCSR000BSE.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000OZC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#269
NTH=1; SUFFIX="CHIPseq.RCOR1.IMR-90.EXPID_ENCSR000EFG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RCOR1.IMR-90.EXPID_ENCSR000EFG.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YCB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RCOR1.IMR-90.EXPID_ENCSR000EFG.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YCD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#270
NTH=1; SUFFIX="CHIPseq.SRF.MCF-7.EXPID_ENCSR000BVA"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.MCF-7.EXPID_ENCSR000BVA.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QRE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.MCF-7.EXPID_ENCSR000BVA.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QRH.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#271
NTH=1; SUFFIX="CHIPseq.GABPA.GM12878.EXPID_ENCSR000BGC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.GM12878.EXPID_ENCSR000BGC.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000NWM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.GM12878.EXPID_ENCSR000BGC.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000NWN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#272
NTH=1; SUFFIX="CHIPseq.REST.HCT116.EXPID_ENCSR000BVI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HCT116.EXPID_ENCSR000BVI.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PAW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HCT116.EXPID_ENCSR000BVI.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PAX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#273
NTH=1; SUFFIX="CHIPseq.RFX5.IMR-90.EXPID_ENCSR000EFD"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.IMR-90.EXPID_ENCSR000EFD.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YEM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.IMR-90.EXPID_ENCSR000EFD.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YEO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#274
NTH=1; SUFFIX="CHIPseq.EP300.GM12878.EXPID_ENCSR000DZG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000DZG.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WAV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.GM12878.EXPID_ENCSR000DZG.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WAX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#275
NTH=1; SUFFIX="CHIPseq.CTCF.GM13977.EXPID_ENCSR000DLB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM13977.EXPID_ENCSR000DLB.BSID_ENCBS221AAA.BSREP1.TECHREP1.FILEIDENCFF000RQN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM13977.EXPID_ENCSR000DLB.BSID_ENCBS221AAA.BSREP2.TECHREP1.FILEIDENCFF000RQS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM13977.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#276
NTH=1; SUFFIX="CHIPseq.REST.HepG2.EXPID_ENCSR000BOT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HepG2.EXPID_ENCSR000BOT.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PMU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HepG2.EXPID_ENCSR000BOT.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PMV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#277
NTH=1; SUFFIX="CHIPseq.SRF.HepG2.EXPID_ENCSR000BLV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.HepG2.EXPID_ENCSR000BLV.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PQU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.HepG2.EXPID_ENCSR000BLV.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PQW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#278
NTH=1; SUFFIX="CHIPseq.TBP.HepG2.EXPID_ENCSR000EEL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.HepG2.EXPID_ENCSR000EEL.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XZL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.HepG2.EXPID_ENCSR000EEL.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XZI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#279
NTH=1; SUFFIX="CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DLW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DLW.BSID_ENCBS669AAA.BSREP1.TECHREP1.FILEIDENCFF000RVE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.endothelial_cell_of_umbilical_vein.EXPID_ENCSR000DLW.BSID_ENCBS669AAA.BSREP2.TECHREP1.FILEIDENCFF000RVI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#280
NTH=1; SUFFIX="CHIPseq.SRF.GM12878.EXPID_ENCSR000BMI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SRF.GM12878.EXPID_ENCSR000BMI.BSID_ENCBS110ENC.BSREP1.TECHREP1.FILEIDENCFF000OFJ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SRF.GM12878.EXPID_ENCSR000BMI.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OFL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#281
NTH=1; SUFFIX="CHIPseq.SIN3A.GM12878.EXPID_ENCSR000DYX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.GM12878.EXPID_ENCSR000DYX.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WDC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.GM12878.EXPID_ENCSR000DYX.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WDE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#282
NTH=1; SUFFIX="CHIPseq.SIN3A.MCF-7.EXPID_ENCSR000BUM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR000BUM.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QQX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR000BUM.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QQU.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#283
NTH=1; SUFFIX="CHIPseq.JUND.K562.EXPID_ENCSR000EGN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000EGN.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YSC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.K562.EXPID_ENCSR000EGN.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YSE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#284
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DPM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DPM.BSID_ENCBS004ENC.BSREP1.TECHREP1.FILEIDENCFF001GWW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DPM.BSID_ENCBS004ENC.BSREP2.TECHREP1.FILEIDENCFF001GWV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_lung.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#285
NTH=1; SUFFIX="CHIPseq.SPI1.GM12878.EXPID_ENCSR000BGQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SPI1.GM12878.EXPID_ENCSR000BGQ.BSID_ENCBS110ENC.BSREP2.TECHREP1.FILEIDENCFF000OBU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SPI1.GM12878.EXPID_ENCSR000BGQ.BSID_ENCBS110ENC.BSREP3.TECHREP1.FILEIDENCFF000OBS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#286
NTH=1; SUFFIX="CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DNC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DNC.BSID_ENCBS611ENC.BSREP1.TECHREP1.FILEIDENCFF000SCQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DNC.BSID_ENCBS611ENC.BSREP2.TECHREP1.FILEIDENCFF000SCV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.keratinocyte.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#287
NTH=1; SUFFIX="CHIPseq.TAF1.SK-N-SH.EXPID_ENCSR000BQF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TAF1.SK-N-SH.EXPID_ENCSR000BQF.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000RDS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TAF1.SK-N-SH.EXPID_ENCSR000BQF.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000RDR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#288
NTH=1; SUFFIX="CHIPseq.ZNF143.K562.EXPID_ENCSR000EGP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ZNF143.K562.EXPID_ENCSR000EGP.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000ZEA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ZNF143.K562.EXPID_ENCSR000EGP.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000ZEC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#289
NTH=1; SUFFIX="CHIPseq.MAFK.HepG2.EXPID_ENCSR000EEB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.HepG2.EXPID_ENCSR000EEB.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XUL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.HepG2.EXPID_ENCSR000EEB.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XUK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#290
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DWY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_lung.EXPID_ENCSR000DWY.BSID_ENCBS936GPP.BSREP1.TECHREP1.FILEIDENCFF001HWA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_lung.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#291
NTH=1; SUFFIX="CHIPseq.CTCF.pancreas.EXPID_ENCSR000DND"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.pancreas.EXPID_ENCSR000DND.BSID_ENCBS143AAA.BSREP2.TECHREP1.FILEIDENCFF000SDQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.pancreas.EXPID_ENCSR000DND.BSID_ENCBS355AAA.BSREP1.TECHREP1.FILEIDENCFF000SDG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.pancreas.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#292
NTH=1; SUFFIX="CHIPseq.CTCF.astrocyte.EXPID_ENCSR000AOO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.astrocyte.EXPID_ENCSR000AOO.BSID_ENCBS020ENC.BSREP1.TECHREP1.FILEIDENCFF000CFV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.astrocyte.EXPID_ENCSR000AOO.BSID_ENCBS020ENC.BSREP1.TECHREP2.FILEIDENCFF000CFW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.astrocyte.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#293
NTH=1; SUFFIX="CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVF.BSID_ENCBS500SDW.BSREP1.TECHREP1.FILEIDENCFF000XMD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TCF7L2.HeLa-S3.EXPID_ENCSR000EVF.BSID_ENCBS500SDW.BSREP2.TECHREP1.FILEIDENCFF000XMF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#294
NTH=1; SUFFIX="CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000EBO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000EBO.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WVE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.H1-hESC.EXPID_ENCSR000EBO.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WVG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#295
NTH=1; SUFFIX="CHIPseq.CTCF.HepG2.EXPID_ENCSR000DLS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000DLS.BSID_ENCBS773AAA.BSREP1.TECHREP1.FILEIDENCFF000RUI.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.HepG2.EXPID_ENCSR000DLS.BSID_ENCBS773AAA.BSREP2.TECHREP1.FILEIDENCFF000RUJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#296
NTH=1; SUFFIX="CHIPseq.CTCF.kidney_epithelial_cell.EXPID_ENCSR000DVH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.kidney_epithelial_cell.EXPID_ENCSR000DVH.BSID_ENCBS056ENC.BSREP1.TECHREP1.FILEIDENCFF001HRL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.kidney_epithelial_cell.EXPID_ENCSR000DVH.BSID_ENCBS056ENC.BSREP2.TECHREP1.FILEIDENCFF001HRM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.kidney_epithelial_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#297
NTH=1; SUFFIX="CHIPseq.CTCF.LNCaP_clone_FGC.EXPID_ENCSR000DME"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.LNCaP_clone_FGC.EXPID_ENCSR000DME.BSID_ENCBS387ENC.BSREP1.TECHREP1.FILEIDENCFF000RXO.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.LNCaP_clone_FGC.EXPID_ENCSR000DME.BSID_ENCBS387ENC.BSREP2.TECHREP1.FILEIDENCFF000RXS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.LNCaP_clone_FGC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#298
NTH=1; SUFFIX="CHIPseq.CTCF.mammary_epithelial_cell.EXPID_ENCSR000ALV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.mammary_epithelial_cell.EXPID_ENCSR000ALV.BSID_ENCBS091ENC.BSREP1.TECHREP1.FILEIDENCFF000BHL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.mammary_epithelial_cell.EXPID_ENCSR000ALV.BSID_ENCBS091ENC.BSREP1.TECHREP2.FILEIDENCFF000BHI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.mammary_epithelial_cell.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#299
NTH=1; SUFFIX="CHIPseq.CTCF.LNCaP_clone_FGC.EXPID_ENCSR000DMF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.LNCaP_clone_FGC.EXPID_ENCSR000DMF.BSID_ENCBS386ENC.BSREP1.TECHREP1.FILEIDENCFF000RXX.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.LNCaP_clone_FGC.EXPID_ENCSR000DMF.BSID_ENCBS386ENC.BSREP2.TECHREP1.FILEIDENCFF000RYB.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.LNCaP_clone_FGC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#300
NTH=1; SUFFIX="CHIPseq.CTCF.foreskin_fibroblast.EXPID_ENCSR000DUH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.foreskin_fibroblast.EXPID_ENCSR000DUH.BSID_ENCBS148GEQ.BSREP1.TECHREP1.FILEIDENCFF001HOE.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.foreskin_fibroblast.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#301
NTH=1; SUFFIX="CHIPseq.GATA3.MCF-7.EXPID_ENCSR000BST"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000BST.BSID_ENCBS056AAA.BSREP1.TECHREP1.FILEIDENCFF000QNS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GATA3.MCF-7.EXPID_ENCSR000BST.BSID_ENCBS056AAA.BSREP2.TECHREP1.FILEIDENCFF000QNP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.MCF-7.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#302
NTH=1; SUFFIX="CHIPseq.CTCF.GM12878.EXPID_ENCSR000DKV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DKV.BSID_ENCBS337LQM.BSREP1.TECHREP1.FILEIDENCFF000ROU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DKV.BSID_ENCBS337LQM.BSREP2.TECHREP1.FILEIDENCFF000ROZ.unpaired.fastq.gz
FASTQ3=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12878.EXPID_ENCSR000DKV.BSID_ENCBS337LQM.BSREP3.TECHREP1.FILEIDENCFF000ROX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#303
NTH=1; SUFFIX="CHIPseq.GABPA.K562.EXPID_ENCSR000BLO"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.K562.EXPID_ENCSR000BLO.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QAQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.K562.EXPID_ENCSR000BLO.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QAV.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#304
NTH=1; SUFFIX="CHIPseq.MAFK.IMR-90.EXPID_ENCSR000EFH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MAFK.IMR-90.EXPID_ENCSR000EFH.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YCY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MAFK.IMR-90.EXPID_ENCSR000EFH.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YDA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#305
NTH=1; SUFFIX="CHIPseq.CEBPB.IMR-90.EXPID_ENCSR000EFM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.IMR-90.EXPID_ENCSR000EFM.BSID_ENCBS379ENC.BSREP1.TECHREP1.FILEIDENCFF000YBL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.IMR-90.EXPID_ENCSR000EFM.BSID_ENCBS379ENC.BSREP2.TECHREP1.FILEIDENCFF000YBO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.IMR-90.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#306
NTH=1; SUFFIX="CHIPseq.CEBPB.K562.EXPID_ENCSR000EHE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR000EHE.BSID_ENCBS039ENC.BSREP1.TECHREP1.FILEIDENCFF000YIC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR000EHE.BSID_ENCBS039ENC.BSREP2.TECHREP1.FILEIDENCFF000YID.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#307
NTH=1; SUFFIX="CHIPseq.CEBPB.HepG2.EXPID_ENCSR000BQI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.HepG2.EXPID_ENCSR000BQI.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PGG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.HepG2.EXPID_ENCSR000BQI.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PGI.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#308
NTH=1; SUFFIX="CHIPseq.REST.HL-60.EXPID_ENCSR000BTF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.HL-60.EXPID_ENCSR000BTF.BSID_ENCBS070ENC.BSREP1.TECHREP1.FILEIDENCFF000PUD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.HL-60.EXPID_ENCSR000BTF.BSID_ENCBS070ENC.BSREP2.TECHREP1.FILEIDENCFF000PUO.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HL-60.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#309
NTH=1; SUFFIX="CHIPseq.MYC.NB4.EXPID_ENCSR000EHR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.NB4.EXPID_ENCSR000EHR.BSID_ENCBS259AAA.BSREP1.TECHREP1.FILEIDENCFF000ZMK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.NB4.EXPID_ENCSR000EHR.BSID_ENCBS259AAA.BSREP2.TECHREP1.FILEIDENCFF000ZMM.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.NB4.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#310
NTH=1; SUFFIX="CHIPseq.SPI1.GM12891.EXPID_ENCSR000BIJ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SPI1.GM12891.EXPID_ENCSR000BIJ.BSID_ENCBS388ENC.BSREP1.TECHREP1.FILEIDENCFF000OJM.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SPI1.GM12891.EXPID_ENCSR000BIJ.BSID_ENCBS388ENC.BSREP2.TECHREP1.FILEIDENCFF000OJL.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12891.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#311
NTH=1; SUFFIX="CHIPseq.EP300.HepG2.EXPID_ENCSR000EDV"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.EP300.HepG2.EXPID_ENCSR000EDV.BSID_ENCBS638AAA.BSREP1.TECHREP1.FILEIDENCFF000XVT.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.EP300.HepG2.EXPID_ENCSR000EDV.BSID_ENCBS638AAA.BSREP2.TECHREP1.FILEIDENCFF000XVS.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#312
NTH=1; SUFFIX="CHIPseq.JUND.GM12878.EXPID_ENCSR000DYS"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.GM12878.EXPID_ENCSR000DYS.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000VXA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.GM12878.EXPID_ENCSR000DYS.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000VXC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#313
NTH=1; SUFFIX="CHIPseq.CTCF.lung.EXPID_ENCSR000DMH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.lung.EXPID_ENCSR000DMH.BSID_ENCBS139AAA.BSREP2.TECHREP1.FILEIDENCFF000RYL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.lung.EXPID_ENCSR000DMH.BSID_ENCBS351AAA.BSREP1.TECHREP1.FILEIDENCFF000RYN.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.lung.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#314
NTH=1; SUFFIX="CHIPseq.SIN3A.K562.EXPID_ENCSR000BLR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.K562.EXPID_ENCSR000BLR.BSID_ENCBS109ENC.BSREP1.TECHREP1.FILEIDENCFF000QFY.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.K562.EXPID_ENCSR000BLR.BSID_ENCBS109ENC.BSREP2.TECHREP1.FILEIDENCFF000QGA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.K562.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#315
NTH=1; SUFFIX="CHIPseq.REST.H1-hESC.EXPID_ENCSR000BHM"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.H1-hESC.EXPID_ENCSR000BHM.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000OQQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.H1-hESC.EXPID_ENCSR000BHM.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OQY.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#316
NTH=1; SUFFIX="CHIPseq.CTCF.GM06990.EXPID_ENCSR000DQW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM06990.EXPID_ENCSR000DQW.BSID_ENCBS057ENC.BSREP1.TECHREP1.FILEIDENCFF001HBC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM06990.EXPID_ENCSR000DQW.BSID_ENCBS057ENC.BSREP2.TECHREP1.FILEIDENCFF001HBD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM06990.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#317
NTH=1; SUFFIX="CHIPseq.RFX5.H1-hESC.EXPID_ENCSR000ECF"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.RFX5.H1-hESC.EXPID_ENCSR000ECF.BSID_ENCBS854AAA.BSREP1.TECHREP1.FILEIDENCFF000WVQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.RFX5.H1-hESC.EXPID_ENCSR000ECF.BSID_ENCBS854AAA.BSREP2.TECHREP1.FILEIDENCFF000WVR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#318
NTH=1; SUFFIX="CHIPseq.REST.Panc1.EXPID_ENCSR000BPK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BPK.BSID_ENCBS425ENC.BSREP1.TECHREP1.FILEIDENCFF000QSK.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.REST.Panc1.EXPID_ENCSR000BPK.BSID_ENCBS425ENC.BSREP2.TECHREP1.FILEIDENCFF000QSR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#319
NTH=1; SUFFIX="CHIPseq.CTCF.GM10266.EXPID_ENCSR000DKR"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM10266.EXPID_ENCSR000DKR.BSID_ENCBS184AAA.BSREP1.TECHREP1.FILEIDENCFF000ROC.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM10266.EXPID_ENCSR000DKR.BSID_ENCBS184AAA.BSREP2.TECHREP1.FILEIDENCFF000ROA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM10266.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#320
NTH=1; SUFFIX="CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000DLN"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000DLN.BSID_ENCBS646PGB.BSREP1.TECHREP1.FILEIDENCFF000RSR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.HeLa-S3.EXPID_ENCSR000DLN.BSID_ENCBS646PGB.BSREP2.TECHREP1.FILEIDENCFF000RST.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HeLa-S3.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#321
NTH=1; SUFFIX="CHIPseq.CTCF.fibroblast_of_the_aortic_adventitia.EXPID_ENCSR000DPY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_the_aortic_adventitia.EXPID_ENCSR000DPY.BSID_ENCBS273AAA.BSREP1.TECHREP1.FILEIDENCFF001GYV.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.fibroblast_of_the_aortic_adventitia.EXPID_ENCSR000DPY.BSID_ENCBS273AAA.BSREP2.TECHREP1.FILEIDENCFF001GYX.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.fibroblast_of_the_aortic_adventitia.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#322
NTH=1; SUFFIX="CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000BNH"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000BNH.BSID_ENCBS111ENC.BSREP1.TECHREP1.FILEIDENCFF000ONR.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.H1-hESC.EXPID_ENCSR000BNH.BSID_ENCBS111ENC.BSREP2.TECHREP1.FILEIDENCFF000OOF.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.H1-hESC.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#323
NTH=1; SUFFIX="CHIPseq.SIN3A.Panc1.EXPID_ENCSR000BOW"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.Panc1.EXPID_ENCSR000BOW.BSID_ENCBS425ENC.BSREP1.TECHREP1.FILEIDENCFF000QUD.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.Panc1.EXPID_ENCSR000BOW.BSID_ENCBS425ENC.BSREP2.TECHREP1.FILEIDENCFF000QUG.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.Panc1.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#324
NTH=1; SUFFIX="CHIPseq.YY1.HCT116.EXPID_ENCSR000BNX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.HCT116.EXPID_ENCSR000BNX.BSID_ENCBS389ENC.BSREP1.TECHREP1.FILEIDENCFF000PDQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.HCT116.EXPID_ENCSR000BNX.BSID_ENCBS389ENC.BSREP2.TECHREP1.FILEIDENCFF000PDT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HCT116.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#325
NTH=1; SUFFIX="CHIPseq.GABPA.SK-N-SH.EXPID_ENCSR000BTG"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.GABPA.SK-N-SH.EXPID_ENCSR000BTG.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QYP.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.GABPA.SK-N-SH.EXPID_ENCSR000BTG.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QYW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#326
NTH=1; SUFFIX="CHIPseq.SIN3A.HepG2.EXPID_ENCSR000BGL"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.SIN3A.HepG2.EXPID_ENCSR000BGL.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PPW.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.SIN3A.HepG2.EXPID_ENCSR000BGL.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PQC.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#327
NTH=1; SUFFIX="CHIPseq.MYC.A549.EXPID_ENCSR000DYC"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.MYC.A549.EXPID_ENCSR000DYC.BSID_ENCBS159AAA.BSREP1.TECHREP1.FILEIDENCFF000VOU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.MYC.A549.EXPID_ENCSR000DYC.BSID_ENCBS159AAA.BSREP2.TECHREP1.FILEIDENCFF000VOW.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#328
NTH=1; SUFFIX="CHIPseq.CTCF.foreskin_fibroblast.EXPID_ENCSR000DWQ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.foreskin_fibroblast.EXPID_ENCSR000DWQ.BSID_ENCBS065ENC.BSREP1.TECHREP1.FILEIDENCFF001HVA.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.foreskin_fibroblast.EXPID_ENCSR000DWQ.BSID_ENCBS065ENC.BSREP2.TECHREP1.FILEIDENCFF001HVJ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.foreskin_fibroblast.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#329
NTH=1; SUFFIX="CHIPseq.CTCF.WI38.EXPID_ENCSR000DYB"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.WI38.EXPID_ENCSR000DYB.BSID_ENCBS606ENC.BSREP1.TECHREP1.FILEIDENCFF001HYS.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.WI38.EXPID_ENCSR000DYB.BSID_ENCBS606ENC.BSREP2.TECHREP1.FILEIDENCFF001HYT.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.WI38.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#330
NTH=1; SUFFIX="CHIPseq.CTCF.GM12892.EXPID_ENCSR000DKY"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12892.EXPID_ENCSR000DKY.BSID_ENCBS633AAA.BSREP1.TECHREP1.FILEIDENCFF000RQB.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.GM12892.EXPID_ENCSR000DKY.BSID_ENCBS633AAA.BSREP2.TECHREP1.FILEIDENCFF000RQA.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12892.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#331
NTH=1; SUFFIX="CHIPseq.TEAD4.HepG2.EXPID_ENCSR000BRP"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TEAD4.HepG2.EXPID_ENCSR000BRP.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PRU.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TEAD4.HepG2.EXPID_ENCSR000BRP.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PRQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#332
NTH=1; SUFFIX="CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DWX"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DWX.BSID_ENCBS591ENC.BSREP1.TECHREP1.FILEIDENCFF001HVN.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CTCF.keratinocyte.EXPID_ENCSR000DWX.BSID_ENCBS591ENC.BSREP2.TECHREP1.FILEIDENCFF001HVQ.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.keratinocyte.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#333
NTH=1; SUFFIX="CHIPseq.YY1.HepG2.EXPID_ENCSR000BNT"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.YY1.HepG2.EXPID_ENCSR000BNT.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PSE.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.YY1.HepG2.EXPID_ENCSR000BNT.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PSD.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#334
NTH=1; SUFFIX="CHIPseq.CEBPB.A549.EXPID_ENCSR000DYI"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.CEBPB.A549.EXPID_ENCSR000DYI.BSID_ENCBS159AAA.BSREP1.TECHREP1.FILEIDENCFF000VOL.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.CEBPB.A549.EXPID_ENCSR000DYI.BSID_ENCBS159AAA.BSREP2.TECHREP1.FILEIDENCFF000VON.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.A549.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#335
NTH=1; SUFFIX="CHIPseq.ATF3.HepG2.EXPID_ENCSR000BKE"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.ATF3.HepG2.EXPID_ENCSR000BKE.BSID_ENCBS114ENC.BSREP1.TECHREP1.FILEIDENCFF000PFQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.ATF3.HepG2.EXPID_ENCSR000BKE.BSID_ENCBS114ENC.BSREP2.TECHREP1.FILEIDENCFF000PFR.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.HepG2.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#336
NTH=1; SUFFIX="CHIPseq.TBP.GM12878.EXPID_ENCSR000DZZ"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.TBP.GM12878.EXPID_ENCSR000DZZ.BSID_ENCBS630AAA.BSREP1.TECHREP1.FILEIDENCFF000WFQ.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.TBP.GM12878.EXPID_ENCSR000DZZ.BSID_ENCBS630AAA.BSREP2.TECHREP1.FILEIDENCFF000WFP.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.GM12878.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out

#337
NTH=1; SUFFIX="CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000BSK"
FASTQ1=$DATA/DREAM_challenge/CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000BSK.BSID_ENCBS428ENC.BSREP1.TECHREP1.FILEIDENCFF000QZG.unpaired.fastq.gz
FASTQ2=$DATA/DREAM_challenge/CHIPseq.JUND.SK-N-SH.EXPID_ENCSR000BSK.BSID_ENCBS428ENC.BSREP2.TECHREP1.FILEIDENCFF000QZK.unpaired.fastq.gz
CTL_FASTQ=$DATA/DREAM_challenge/CONTROL.SK-N-SH.unpaired.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH  -fastq1 $FASTQ1 -fastq2 $FASTQ2 -ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out







########## PE

NTH=1; SUFFIX="CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ"
FASTQ1_1=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ.BSID_ENCBS378AAA.BSREP1.TECHREP1.FILEIDENCFF156EZY.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ.BSID_ENCBS378AAA.BSREP1.TECHREP1.FILEIDENCFF052XOQ.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ.BSID_ENCBS406AAA.BSREP2.TECHREP1.FILEIDENCFF470OUZ.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge/CHIPseq.CEBPB.K562.EXPID_ENCSR416QLJ.BSID_ENCBS406AAA.BSREP2.TECHREP1.FILEIDENCFF555QJQ.R2.fastq.gz
CTL_FASTQ1_1=$DATA/DREAM_challenge/CONTROL.K562.R1.fastq.gz
CTL_FASTQ1_2=$DATA/DREAM_challenge/CONTROL.K562.R2.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH -pe \
-fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 \
-ctl_fastq1_1 $CTL_FASTQ1_1 -ctl_fastq1_2 $CTL_FASTQ1_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out



NTH=1; SUFFIX="CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO"
FASTQ1_1=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO.BSID_ENCBS216AOQ.BSREP1.TECHREP1.FILEIDENCFF733YZZ.R1.fastq.gz
FASTQ1_2=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO.BSID_ENCBS216AOQ.BSREP1.TECHREP1.FILEIDENCFF354HNG.R2.fastq.gz
FASTQ2_1=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO.BSID_ENCBS616MBU.BSREP3.TECHREP1.FILEIDENCFF175HFF.R1.fastq.gz
FASTQ2_2=$DATA/DREAM_challenge/CHIPseq.SIN3A.MCF-7.EXPID_ENCSR468LUO.BSID_ENCBS616MBU.BSREP3.TECHREP1.FILEIDENCFF543HLG.R2.fastq.gz
CTL_FASTQ1_1=$DATA/DREAM_challenge/CONTROL.MCF-7.R1.fastq.gz
CTL_FASTQ1_2=$DATA/DREAM_challenge/CONTROL.MCF-7.R2.fastq.gz
WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;
bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH -pe \
-fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2 \
-ctl_fastq1_1 $CTL_FASTQ1_1 -ctl_fastq1_2 $CTL_FASTQ1_2 -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out








