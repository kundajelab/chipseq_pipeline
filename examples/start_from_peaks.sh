OUT=/srv/gsfs0/scratch/leepc12/run/DREAM_challenge_hidden/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO/out

peak1=$OUT/peak/spp/rep1/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS866ZXX.BSREP1.TECHREP1.FILEIDENCFF164ZYB.R1.PE2SE.nodup.tagAlign_x_CONTROL.MCF-7.R1.PE2SE.nodup.40M.tagAlign.regionPeak.gz
peak2=$OUT/peak/spp/rep2/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS705BBA.BSREP2.TECHREP1.FILEIDENCFF478QIY.R1.PE2SE.nodup.tagAlign_x_CONTROL.MCF-7.R1.PE2SE.nodup.40M.tagAlign.regionPeak.gz
peak_pooled=$OUT/peak/spp/pooled_rep/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS866ZXX.BSREP1.TECHREP1.FILEIDENCFF164ZYB.R1.PE2SE.nodup_pooled.tagAlign_x_CONTROL.MCF-7.R1.PE2SE.nodup.40M.tagAlign.regionPeak.gz
peak1_pr1=$OUT/peak/spp/pseudo_reps/rep1/pr1/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS866ZXX.BSREP1.TECHREP1.FILEIDENCFF164ZYB.R1.PE2SE.nodup.pr1.tagAlign_x_CONTROL.MCF-7.R1.PE2SE.nodup.40M.tagAlign.regionPeak.gz
peak1_pr2=$OUT/peak/spp/pseudo_reps/rep1/pr2/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS866ZXX.BSREP1.TECHREP1.FILEIDENCFF164ZYB.R1.PE2SE.nodup.pr2.tagAlign_x_CONTROL.MCF-7.R1.PE2SE.nodup.40M.tagAlign.regionPeak.gz
peak2_pr1=$OUT/peak/spp/pseudo_reps/rep2/pr1/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS705BBA.BSREP2.TECHREP1.FILEIDENCFF478QIY.R1.PE2SE.nodup.pr1.tagAlign_x_CONTROL.MCF-7.R1.PE2SE.nodup.40M.tagAlign.regionPeak.gz
peak2_pr2=$OUT/peak/spp/pseudo_reps/rep2/pr2/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS705BBA.BSREP2.TECHREP1.FILEIDENCFF478QIY.R1.PE2SE.nodup.pr2.tagAlign_x_CONTROL.MCF-7.R1.PE2SE.nodup.40M.tagAlign.regionPeak.gz
peak_ppr1=$OUT/peak/spp/pooled_pseudo_reps/ppr1/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS866ZXX.BSREP1.TECHREP1.FILEIDENCFF164ZYB.R1.PE2SE.nodup.pr1_pooled.tagAlign_x_CONTROL.MCF-7.R1.PE2SE.nodup.40M.tagAlign.regionPeak.gz
peak_ppr2=$OUT/peak/spp/pooled_pseudo_reps/ppr2/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS866ZXX.BSREP1.TECHREP1.FILEIDENCFF164ZYB.R1.PE2SE.nodup.pr2_pooled.tagAlign_x_CONTROL.MCF-7.R1.PE2SE.nodup.40M.tagAlign.regionPeak.gz

bds $CODE/bds_atac/chipseq/chipseq.bds -species hg19 \
-peak1 $peak1 -peak2 $peak2 -peak_pooled $peak_pooled \
-peak1_pr1 $peak1_pr1 -peak1_pr2 $peak1_pr2 -peak2_pr1 $peak2_pr1 -peak2_pr2 $peak1_pr2 \
-peak_ppr1 $peak_ppr1 -peak_ppr2 $peak_ppr2

