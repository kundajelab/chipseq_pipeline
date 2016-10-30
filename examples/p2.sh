#1
TITLE=BulkBcells-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

#2
TITLE=BulkBcells-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

#3
TITLE=Bulk-CD8-pos-T-cells-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Bulk-CD8-pos-T-cells-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=BulkTeff-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=BulkTeff-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Bulk-T-reg-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Bulk-T-reg-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=effector-memory-CTLs-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1n

#10
TITLE=effector-memory-CTLs-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=GammaDelta-T-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=GammaDelta-T-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

#13
TITLE=ImmatureNKcells-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=MatureNK5000-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=MatureNK-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=MemB-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=MemB-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=MemoryNK7500-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

#19
TITLE=mem-Teff-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

#20
TITLE=mem-Teff-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Mem-T-reg-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Mem-T-reg-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Mono-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Mono-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=MyeloidDC-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=NaiveB-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=NaiveB-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Naive-CD8-T-cells-U
#FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
#FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
#FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
#FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
#bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2
sleep 1

TITLE=Naive-T-eff-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Naive-T-eff-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Naive-T-reg-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Neutrophil-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=pDC-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Plasmoblast7500-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Th17-precursor-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Th17-precursor-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Th1-precursor-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Th1-precursor-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Th2-precursor-S
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1

TITLE=Th2-precursor-U
FASTQ1_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R1.fastq.gz
FASTQ1_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-a-R2.fastq.gz
FASTQ2_1=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R1.fastq.gz
FASTQ2_2=/mnt/lab_data/kundaje/users/pgreens/projects/hematopoiesis/data/atac_seq/fastq/marson_data/pooled/"$TITLE"-b-R2.fastq.gz
WORK=/srv/scratch/shared/surya/leepc12/run/pgreens_atac2/$TITLE; mkdir -p $WORK; cd $WORK
bds_scr $TITLE /users/leepc12/code/atac_dnase_pipelines/atac.bds -species hg19 -title $TITLE -pe -nth 6 -fastq1_1 $FASTQ1_1 -fastq1_2 $FASTQ1_2 -fastq2_1 $FASTQ2_1 -fastq2_2 $FASTQ2_2
sleep 1
