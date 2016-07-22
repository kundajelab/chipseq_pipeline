FASTQ1_1=/srv/gsfs0/scratch/leepc12/data/DREAM_challenge_hidden/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS866ZXX.BSREP1.TECHREP1.FILEIDENCFF164ZYB.R1.fastq.gz
FASTQ1_2=/srv/gsfs0/scratch/leepc12/data/DREAM_challenge_hidden/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS866ZXX.BSREP1.TECHREP1.FILEIDENCFF431EXX.R2.fastq.gz
TAG2=/srv/gsfs0/scratch/leepc12/run/DREAM_challenge_hidden/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO/out/align/rep2/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO.BSID_ENCBS705BBA.BSREP2.TECHREP1.FILEIDENCFF478QIY.R1.PE2SE.nodup.tagAlign.gz
CTL_BAM1=/srv/gsfs0/scratch/leepc12/run/DREAM_challenge_hidden/CHIPseq.ATF2.MCF-7.EXPID_ENCSR881UOO/out/align/ctl1/CONTROL.MCF-7.R1.PE2SE.bam

bds /home/leepc12/bds_atac/chipseq/chipseq.bds -species hg19 -pe -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -tag2 $TAG2 -ctl_bam1 $CTL_BAM1
