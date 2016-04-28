AQUAS (Automated quality control, peak calling and reproducibility analysis of Transcription factor ChIP-seq data) 
===============================================

The AQUAS pipeline is based off the ENCODE (phase-3) transcription factor ChIP-seq pipeline specifications (by Anshul Kundaje) in this google doc https://docs.google.com/document/d/1lG_Rd7fnYgRpSIqrIfuVlAz2dW1VaSQThzk836Db99c/edit# . However, please note that this is NOT the official ENCODE (phase-3) pipeline but rather a free and open-source implementation that adheres to the specifications. The official ENCODE (phase-3) pipeline is being implemented by the ENCODE DCC on a cloud computing platform knows as DNAnexus.It will be released shortly by the ENCODE DCC and will be linked to from this site as well. The official DNAnexus pipeline is open-source as well. However, users need to create an account on DNAnexus and pay for cloud compute. We have created this free version as an alternative for those who might have access to local compute infrastructure and not necessarily want to pay for DNAnexus cloud compute. We have run extensive tests to make sure the output of AQUAS and the official DNAnexus pipeline match exactly. We plan to continue making sure AQUAS and the DNAnexus implementation continue to remain in sync.

AQUAS takes advantage of the powerful pipeline language BigDataScript (http://pcingola.github.io/BigDataScript/index.html) in order to provide a complete end-to-end solution that you can run on a variety of compute infrastructures. AQUAS has the following features.

```
1) One-command-line installation for all dependencies for ChIP-Seq pipeline.
2) One command line (or one configuration file) to run the whole pipeline.
3) Starting the pipeline from fastq, bam, tagalign and peak. You can also stop it at any stage.
4) Resuming from the point of failure without re-doing finished stages.
5) Mapping for each replicate and peak calling go in parallel.
6) Signal track generation (bigwig) for bam and tagalign.
7) Sun Grid Engine cluster support.
8) Realtime HTML Progress reports to monitor pipeline jobs.
```


### Installation instruction (for SCG3 and all others)

Install java (jdk >= 1.7 or jre >= 1.7) and the latest git on your system. 

Install Anaconda Python3 (or Miniconda3) on your system. Open a new terminal after installation.

Install BigDataScript v0.9999 on your system.

See details <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_PIPELINE.md" target=_blank>here</a>

Get the latest version of chipseq pipelines.
```
$ git clone https://github.com/kundajelab/TF_chipseq_pipeline
```

Install software dependencies automatically (DO NOT run this on kundaje clusters). It will create two conda environments (aquas_chipseq and aquas_chipseq_py3) in Miniconda3.
```
$ ./install_dependencies.sh
```

Replace BDS's default `bds.config` with a correct one:
```
$ cp bds.config $HOME/.bds
```


### Installation instruction (for Kundaje lab clusters)

BDS and all dependencies have already been installed on lab servers. Do not run `install_dependencies.sh` on these servers. Get the latest version of chipseq pipelines. Don't forget to move bds.config to BigDataScript (BDS) directory
```
$ git clone https://github.com/kundajelab/TF_chipseq_pipeline
$ cd TF_chipseq_pipeline
$ mkdir -p $HOME/.bds
$ cp bds.config $HOME/.bds/
```



### Genome data files for SCG3 and Kundaje lab servers

For Kundaje lab servers (mitra, nandi, durga, kali, vayu, amold and wotan) and SCG3 (carmack*, crick*, scg3*), the pipeline automatically determines the type of servers and set shell environments and species database.
```
$ bds chipseq.bds ... -species [SPECIES; hg19, mm9, ... ]
```



### Usage

There are two ways to define parameters for ChIP-Seq pipelines. Default values are already given for most of them. Take a look at example commands and configuration files (`./examples`). Two methods share the same key names.


1) Parameters from command line arguments: 
```
$ bds chipseq.bds [OPTIONS]
```
Example (for single ended fastqs):
```
$ bds chipseq.bds \
-fastq1 /DATA/ENCSR000EGM/ENCFF000YLW.fastq.gz \
-fastq2 /DATA/ENCSR000EGM/ENCFF000YLY.fastq.gz \
-fastq1 /DATA/ENCSR000EGM/Ctl/ENCFF000YRB.fastq.gz \
-bwa_idx /INDEX/encodeHg19Male_bwa-0.7.3.fa \
```

2) Parameters from a configuration file:
```
$ bds chipseq.bds [CONF_FILE]
```
or
```
$ bds chipseq.bds -c [CONF_FILE]
```

Example configuriation file:
```
$ cat [CONF_FILE]

fastq1= /DATA/ENCSR000EGM/ENCFF000YLW.fastq.gz
fastq2= /DATA/ENCSR000EGM/ENCFF000YLY.fastq.gz
ctl_fastq1= /DATA/ENCSR000EGM/Ctl/ENCFF000YRB.fastq.gz
bwa_idx= /INDEX/encodeHg19Male_bwa-0.7.3.fa
```

The pipeline automatically determines if each task has finished or not (comparing timestamps of input/output files for each task). To run the pipeline from the point of failure, correct error first and then just run the pipeline with the same command that you started the pipeline with. There is no additional parameter for restarting the pipeline.



### Using Species file

There are many species specific parameters like indices (bwa, bowtie, ...), chrome sizes, sequence file and genome size. If you have multiple pipelines, it's a hard job to individually define all parameters for each pipeline. However, if you have a species file with all species specific parameters defined, then you define less parameters and share the species file with all other pipelines.
```
$ bds chipseq.bds ... -species [SPECIES] -species_file [SPECIES_FILE]
```

See details <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_PIPELINE.md" target=_blank>here</a>



### Pipeline stages and Mapping-only mode

The AQUAS transcription factor ChIP-Seq pipeline goes through the following stages:
```
1) bam          : mapping (fastq -> bam)
2) filt_bam     : filtering and deduping bam (bam -> filt_bam)
3) tag          : creating tagalign (bam -> tagalign)
4) xcor         : cross-correlation analysis (tagalign -> xcor plot.pdf/score.txt )
5) peak         : peak calling (tagaligns -> peaks)
6) idr          : IDR (peaks -> IDR score and peaks)
```
If you define `-final_stage [STAGE]`, the pipeline stops right after the stage.

This is useful if you are not interested in peak calling and want to map/align lots of genome data (fastq, bam or filt_bam) IN PARALLEL. Set `-final_stage [FINAL STAGE]`. Choose your final stage. You can find description for each stage in the previous chapter (Chapter Input data type and final stage).

Mapping for each replicate will go IN PARALLEL! Consider your computating resources before running the pipeline. If you start the pipeline with fastqs, lots of processors will be taken due to bwa_aln. Lower -nth_bwa_aln if you have limited computing resources. It's 2 by default.

Example1: You have 5 unfiltered raw bam and want to filter them (removing dupes).
```
$ bds chipseq.bds \
-final_stage tag \
-fastq1 /DATA/ENCFF000YLW.fastq.gz \
-fastq2 /DATA/ENCFF000YLY.fastq.gz \
...
-fastq10 /DATA/ENCFF000???.fastq.gz \
-bwa_idx /INDEX/encodeHg19Male_v0.7.3/encodeHg19Male_bwa-0.7.3.fa \
-nth_bwa_aln 3   # No. of threads for bwa_aln for each replicate, 3 x 10 logical processors will be taken in total.
```

Example2: You have 5 unfiltered raw bam and want to filter them (removing dupes).
```
$ bds chipseq.bds \
-final_stage filt_bam \
-bam1 /DATA/ENCFF000YLW.bam \
...
-bam5 /DATA/ENCFF000???.bam
```


### How to define input data

The ENCODE ChIP-Seq pipeline can start from various types of data.
```
1) fastq 
2) bam
3) filt_bam	(it's bam but dupes are removed)
4) tag
5) peak
```
Except for fastq, add `-pe` if your data set is paired-end.

For repllicates:
Define data path with `-[DATA_TYPE][REPLICATE_ID]`.

For contols:
Define data path with `-ctl_[DATA_TYPE][CONTROL_ID]`.

You can skip `[REPLICATE_ID]` or `[CONTROL_ID]` if it's 1. (eg. `-fastq`, `-ctl_bam`, `-tag`, ... )

1) Starting from fastqs (see the example in the previous chapter)

2) Starting from bams
```
$ bds chipseq.bds \
-bam1 /DATA/ENCSR000EGM/ENCFF000YLW.bam \
-bam2 /DATA/ENCSR000EGM/ENCFF000YLY.bam \
-ctl_bam /DATA/ENCSR000EGM/Ctl/ENCFF000YRBbam \
...
```

3) Starting from filtered bams (filt_bam: bam with dupe removed)
```
$ bds chipseq.bds \
-bam1 /DATA/ENCSR000EGM/ENCFF000YLW.bam \
-bam2 /DATA/ENCSR000EGM/ENCFF000YLY.bam \
-ctl_bam /DATA/ENCSR000EGM/Ctl/ENCFF000YRB.bam \
...
```

4) Starting from tagaligns
```
$ bds chipseq.bds \
-tag1 /DATA/ENCSR000EGM/ENCFF000YLW.tagAlign.gz \
-tag2 /DATA/ENCSR000EGM/ENCFF000YLY.tagAlign.gz \
-ctl_tag /DATA/ENCSR000EGM/Ctl/ENCFF000YRB.tagAlign.gz \
...
```

5) Starting from peak files
```
$ bds chipseq.bds \
-peak1 /DATA/Example1.regionPeak.gz \
-peak2 /DATA/Example2.regionPeak.gz \
-peak_pooled /DATA/Example.pooled.regionPeak.gz \
...
```
If you want do perform full IDR including pseudo-replicates and pooled pseudo-replicates, add the following:

For IDR on pseduro replicates of replicate 1:
```
...
-peak1_pr1 /DATA/Example1_PR1.regionPeak.gz \
-peak1_pr2 /DATA/Example1_PR2.regionPeak.gz \
...
```
For IDR on pseduro replicates of replicate 2:
```
...
-peak2_pr1 /DATA/Example2_PR1.regionPeak.gz \
-peak2_pr2 /DATA/Example2_PR2.regionPeak.gz \
...
```
For IDR on pooled pseduro replicates:
```
...
-peak_ppr1 /DATA/Example_PPR1.regionPeak.gz \
-peak_ppr2 /DATA/Example_PPR2.regionPeak.gz \
...
```


### How to define paired-end (PE) data set

Add the following flag to the command line.
```
-pe
```

For fastqs, you do not need to add '-pe' since the pipeline will automatically determine if SE or PE.

For replicates:
Define data path as -fastq[REPLICATE_ID], then it's SE (single ended).
Define data path as -fastq[REPLICATE_ID]_[PAIRING_ID], then it's PE.

For controls:
Define data path as -ctl_fastq[REPLICATE_ID], it's SE.
Define data path as -ctl_fastq[REPLICATE_ID]_[PAIRING_ID], it's PE.

Example:
SE: 2 replicates and 1 control replicate
```
$ bds chipseq.bds \
-fastq1 /DATA/ENCSR769ZTN/ENCFF002ELL.fastq.gz \
-fastq2 /DATA/ENCSR769ZTN/ENCFF002ELJ.fastq.gz \
-ctl_fastq1 /DATA/ENCSR000EGM/Ctl/ENCFF002EFQ.fastq.gz \
-bwa_idx /INDEX/encodeHg19Male_v0.7.3/encodeHg19Male_bwa-0.7.3.fa
```

PE: 2 replicates and 2 control replicates
```
$ bds chipseq.bds \
-fastq1_1 /DATA/ENCSR769ZTN/ENCFF002ELJ.fastq.gz \
-fastq1_2 /DATA/ENCSR769ZTN/ENCFF002ELK.fastq.gz \
-fastq2_1 /DATA/ENCSR769ZTN/ENCFF002ELL.fastq.gz \
-fastq2_2 /DATA/ENCSR769ZTN/ENCFF002ELM.fastq.gz \
-ctl_fastq1_1 /DATA/ENCSR000EGM/Ctl/ENCFF002EFQ.fastq.gz \
-ctl_fastq1_2 /DATA/ENCSR000EGM/Ctl/ENCFF002EFR.fastq.gz \
-ctl_fastq2_1 /DATA/ENCSR000EGM/Ctl/ENCFF002EFS.fastq.gz \
-ctl_fastq2_2 /DATA/ENCSR000EGM/Ctl/ENCFF002EFT.fastq.gz \
-bwa_idx /INDEX/encodeHg19Male_v0.7.3/encodeHg19Male_bwa-0.7.3.fa
```



### Peak calling method

Define peak calling method with `-callpeak [METHOD]`, choose `[METHOD]` in `[spp, macs2]`. You can also choose both like `-callpeak spp,macs2` (default).
If you want to call peaks on true/pooled replicates (not on pseudoreplicates or pooled pseudoreplicate) only, add `-true_rep`.

Both spp and macs2 generate peaks but signal tracks (pvalue and fold enrichment) are generated from macs2 only. IDR analysis will take peaks from spp. For spp, no additional parameter is required. For macs2, define additional parameters (`-chrsz`, `-gensz`).

Example for both spp and macs2 (you can omit `-callpeak spp,macs2` since it's by default):
```
$ bds chipseq.bds \
...
-callpeak spp,macs2 \
-chrsz /DATA/hg19.chrom.sizes \
-gensz hs
```
Seq is the directory where reference genome files exist. Chrsz is chrome sizes file. Gensz is hs for human and mm for mouse.

If you don't want IDR analysis and want to get peaks and signal tracks from macs2 only:
```
-callpeak macs2 -chrsz /DATA/hg19.chrom.sizes -gensz hs
```

If you don't want to get peaks and signal tracks from macs2:
```
-callpeak spp
```



### IDR

IDR analysis is based on <a href="https://github.com/nboley/idr" target="_blank">https://github.com/nboley/idr</a>. No additional parameter required but specify a blacklist (for hg19, <a href="http://hgdownload.cse.ucsc.edu/goldenpath/hg19/encodeDCC/wgEncodeMapability/wgEncodeDacMapabilityConsensusExcludable.bed.gz">here</a>) for full IDR QC.
```
-blacklist_idr [BLACKLIST_IDR]
```



### Signal track generation

Define with `-sigtrk [SIG_TRK_GEN_METHOD: tag2bw (or aln2rawsig), bam2bw (or deeptools)]` to generate signal track (bigwig).

If you don't want to define parameters like `seq`, `umap`, `chrsz` for every pipeline run, use species file.
Define all species specific parameters in the species file and add parameter `-species [SPECIES: hg19, mm9, ...] -species_file [SPECIES_FILE]`.

In order to generate signal track using macs2 do not use `-sigtrk macs2`. Use `-callpeak macs2` instead.

1) using tag2bw (align2rawsignal; it converts tagalign to bigwig, final_stage >= xcor )
```
$ bds chipseq.bds \
...
-sigtrk tag2bw \
-seq /DATA/encodeHg19Male \
-umap /DATA/encodeHg19Male/globalmap_k20tok54 \
-chrsz /DATA/hg19.chrom.sizes
```
Seq is the directory where reference genome files exist.
Umap files are provided at http://www.broadinstitute.org/~anshul/projects/encode/rawdata/umap/.

If you want both bigwig and wig, then add `-make_wig`.

2) using bam2bw (bamCoverage in deepTools; it converts filt_bam to bigwig, final_stage >= filt_bam )
```
$ bds chipseq.bds \
...
-sigtrk bam2bw
```



### Parallelization (IMPORTANT!)

For completely serialized jobs:
```
-no_par
```

You can also set up the level of parallelization for the pipeline.
```
-par_lvl [PAR_LEVEL; 0-7]
```
0: no parallel jobs (equivalent to `-no_par`, all subtasks for each replicate will also be serialized)
1: no replicates/controls in parallel (subtasks for each replicate can be parallelized)
2: 2 replicates/controls in parallel
3: 2 replicates/controls and 2 peak-callings in parallel (default)
4: 4 replicates/controls and 2 peak-callings in parallel
5: 4 replicates/controls and 4 peak-callings in parallel
6: customized
7: unlimited

For customized parallelization:
```
-par_lvl 6 -reps_in_par [NO_REP_IN_PAR] -peaks_in_par [NO_PEAKCALLING_IN_PAR]
```



### Useful HTML reports

There are two kinds of HTML reports provided by the pipeline:

1) BigDataScript HTML report for debugging

Located at the working folder with name chipseq_[TIMESTAMP]_report.html.
This report is automatically generated by BigDataScript and is useful for debugging since it shows summary, timeline, Stdout and Stderr for each job.

2) ChIP-Seq pipeline report for QC and result

The pipeline automatically generate a nice HTML report (Report.html) on its output directory (specified with -out_dir or just './out'). It summarizes files and directory structure, includes QC reports and show a workflow diagram and genome browser tracks for peaks and signals (bigwigs for pValue and fold change).

Move your output directory to a web directory (for example, /var/www/somewhere) or make a softlink of it to a web directory. For genome browser tracks, specify your web directory root for your output  While keeping its structure. Make sure that you have bgzip and tabix installed on your system.

Add the following to the command line:
```
-url_base http://your/url/to/output
```



### For desktops with limited memory (< 16GB)

Some bioinformatics softwares like bwa 0.7.3, samtools 0.1.12 do not return non-zero error code even though they are lack of memory (See the following example of bwa 0.7.3 for a desktop with 4 cores and 12GB of memory). Therefore, the pipeline will continue with wrong files. If you get unsatisfactory result take a closer look at HTML report generated by the pipeline. Such HTML report must be found in the working directory where you run the pipeline.

The minimum memory requirement for the pipeline is 8GB, but we recommend to run the pipeline on computers with more than 16GB of memory. If you have memory issues, there are two options. Try with 2) first and if it doesn't work go 1). The difference between those two options is that even single thread jobs will be serialized for 1).

1) (SLOW BUT STABLE) Turn off parallelization by using the flag `-no_par` in command line argument or `no_par = true` in a configuration file. However, individual jobs can still use multiple number of processors so increase the number of threads to speed up the pipeline.

Example: for desktop with 4 cores
```
$ bds chipseq.bds -no_par -nth_bwa_aln 4 -nth_spp 4 ...
```

2) (FAST BUT UNSTABLE) Do not turn off paralleization but just increase the number of threads for BIG-MEMORY bottleneck jobs (bwa and spp) to your computer's maximum so that no BIG-MEMORY jobs will be parallelized.

Example: for desktop with 4 cores
```
$ bds chipseq.bds -nth_bwa_aln 4 -nth_spp 4 ...
```

An example of a failed job due to lack of memory (desktop with 4 cores and 12 GB of memory):
```
[bam_header_read] EOF marker is absent. The input is probably truncated.
[bwa_read_seq] 0.0% bases are trimmed.
[bwa_aln_core] convert to sequence coordinate... [bwt_restore_sa] Failed to allocate 1547846992 bytes at bwt.c line 404: Cannot allocate memory
[samopen] SAM header is present: 25 sequences.
[sam_read1] reference 'ID:bwa	PN:bwa	VN:0.7.3-r789	CL:bwa samse /home/leepc12/run/index/encodeHg19Male_bwa-0.7.3.fa /home/leepc12/run/ENCSR000EGM3/out/TEST_Rep2.sai /home/leepc12/run/ENCODE/ENCFF000YLY.fastq.gz
' is recognized as '*'.
[main_samview] truncated file.
```



### List of all parameters for ChIP-Seq pipelines

For advanced users, all command line parameters for the pipeline will be listed if you run bds chipseq.bds without any arguments.

```
$ bds chipseq.bds
```


### How to set shell environments (What are `mod`, `shcmd`, `addpath`, `conda_env` and `conda_env_py3`?)

It is important to define enviroment variables (like $PATH) to make bioinformatics softwares in the pipeline work properly. mod, shcmd and addpath are three convenient ways to define environment variables. Environment variables defined with mod, shcmd and addpath are preloaded for all tasks on the pipeline. For example, if you define environment variables for bwa/0.7.3 with mod. bwa of version 0.7.3 will be used throughout the whole pipeline (including bwa aln, bwa same and bwa sampe).

See details <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_PIPELINE.md" target=_blank>here</a>

They are command line argument versions of mod, shcmd and addpath. For example,
```
$ bds chipseq.bds -mod 'bwa/0.7.3; samtools/1.2' -shcmd 'export PATH=${PATH}:/home/userid/R-2.15.1' -addpath '${HOME}/program1/bin' -conda_env my_conda_env_py2 -conda_env_py3 my_conda_env_py3
```

See details <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_PIPELINE.md" target=_blank>here</a>



### Using Environment file

You can have mod, shcmd and addpath in your configuration file or `-mod` `-shcmd` and `-addpath` in your command line arguments, but it will be more convenient to have a separate file to define your own shell environments. Please note that this environment file is NOT an Anaconda virtual environment.
```
$ bds chipseq.bds ... -env [ENV_FILE]

$ cat [ENV_FILE]

[carmack.stanford.edu] 	# environment settings per hostname

mod_any_suffix = bwa/0.7.3 samtools/1.2
addpath_any_suffix = ${HOME}/program1/bin
shcmd_any_suffix = export R_PATH=/home/userid/R-2.15.1

species_file = /path/to/your/species.conf

nth_spp = 4 	// On this cluster for spp, I want to use 4 CPUs, 4G for each CPU and 10 hours of walltime.
mem_spp = 4G
wt_spp  = 10:00:00

nth_macs2 = 2 	// You can also have resource settings for other tasks

conda_env  = my_conda_env_py2
conda_env_py3 = my_conda_env_py3
...


[crick.stanford.edu, crick2.stanford.edu]	# same environment settings are shared with multiple hostnames
...

```

See details <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_PIPELINE.md" target=_blank>here</a>



### Requirements 

For python2 (python 2.x >= 2.7), <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/requirements.txt" target=_blank>here</a>

For python3, <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/requirements_py3.txt" target=_blank>here</a>

For R-2.x, <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/requirements_r2.txt" target=_blank>here</a>

IMPORTANT! Install dependencies with `install_dependencies.sh`. It will install them on Anaconda virtual environment (`aquas_chipseq` for python2, `aquas_chipseq_py3` for python3 and `aquas_chipseq_r2` for R-2.x) and you don't need super-user privileges.

However, if you are a super-user, it's recommended to install the following softwares on the system and share it with your colleagues.

Recommended softwares and versions:
```
bwa/0.7.10
samtools/0.1.19
bedtools/2.19.1
ucsc_tools/3.0.9
picard-tools/1.92
MACS2/2.1.0
java/7
gem/2.6
r/2.15.1
deepTools/2.2.3
align2rawsignal/2.0
phantompeakqualtools/2.0
idr/latest (https://github.com/nboley/idr)
MCR2010b

python/2.7.2
	packages: numpy, matplotlib, pysam, pyBigwig, scipy, python-levenshtein, deepTools==2.2.3

python/3.4.3
	packages: numpy, matplotlib, scipy, idr
```

Before installing the above softwares, make sure to install fundamental programs and libraries listed in the following:

For Ubuntu/Debian based Linux,
```
$ sudo apt-get update
$ sudo apt-get install build-essential zlib1g-dev libncurses5-dev gfortran openssl libssl-dev libfreetype6-dev liblapack-dev pkg-config poppler-utils libboost-all-dev graphviz libcurl4-openssl-dev libxp6 libgsl0-dev
```

For RedHat/Fedora based Linux,
```
$ sudo yum install gcc gcc-c++ kernel-devel lapack-devel libXpm-devel libXp-devel libXmu-devel wget bc zlib-devel ncurses-devel gcc-gfortran openssl openssl-devel freetype-devel poppler-utils
boost-devel graphviz libcurl-devel libpng-devel bzip2 gsl-devel
```

See details <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/install_dependencies.sh" target=_blank>here (dep. installer)</a>




### Troubleshooting

1) "[gzclose] buffer error" during bwa aln

Example:
```
[bwa_aln] 17bp reads: max_diff = 2
[bwa_aln] 38bp reads: max_diff = 3
[bwa_aln] 64bp reads: max_diff = 4
[bwa_aln] 93bp reads: max_diff = 5
[bwa_aln] 124bp reads: max_diff = 6
[bwa_aln] 157bp reads: max_diff = 7
[bwa_aln] 190bp reads: max_diff = 8
[bwa_aln] 225bp reads: max_diff = 9
[bwa_read_seq] 0.2% bases are trimmed.
[bwa_aln_core] calculate SA coordinate... 21.39 sec
[bwa_aln_core] write to the disk... 0.10 sec
[bwa_aln_core] 262144 sequences have been processed.
[bwa_read_seq] 0.2% bases are trimmed.
[bwa_aln_core] calculate SA coordinate... 21.27 sec
[bwa_aln_core] write to the disk... 0.09 sec
[bwa_aln_core] 524288 sequences have been processed.
[bwa_read_seq] 0.2% bases are trimmed.
[bwa_aln_core] calculate SA coordinate... 21.51 sec
[bwa_aln_core] write to the disk... 0.08 sec
[bwa_aln_core] 786432 sequences have been processed.
[bwa_read_seq] 0.2% bases are trimmed.
[bwa_aln_core] calculate SA coordinate... 21.34 sec
[bwa_aln_core] write to the disk... 0.08 sec
[bwa_aln_core] 1048576 sequences have been processed.
[bwa_read_seq] 0.2% bases are trimmed.
[bwa_aln_core] calculate SA coordinate... 21.83 sec
[bwa_aln_core] write to the disk... 0.07 sec
[bwa_aln_core] 1309550 sequences have been processed.
[gzclose] buffer error
```

Solution1 (BEST):
Use bwa-0.7.3 or bwa-0.6.2.
```
$ git clone https://github.com/lh3/bwa bwa-0.7.3
$ cd bwa-0.7.3
$ git checkout tags/0.7.3
$ make
$ ./bwa
```

Solution2:
Upgrade zlib to 1.2.8. (https://github.com/MikkelSchubert/paleomix/wiki/BAM-pipeline-specific-troubleshooting#4.3.)
```
$ BWA_VER=0.7.3
$ git clone https://github.com/lh3/bwa
$ cd bwa
$ git checkout tags/${BWA_VER}
$ sed -e's#INCLUDES=#INCLUDES=-Izlib-1.2.8/ #' -e's#-lz#zlib-1.2.8/libz.a#' Makefile > Makefile.zlib
$ make clean
$ wget http://zlib.net/zlib-1.2.8.tar.gz
$ tar xvzf zlib-1.2.8.tar.gz
$ cd zlib-1.2.8
$ ./configure
$ make
$ cd ..
$ make -f Makefile.zlib
$ ./bwa
```

Tested bwa versions (with zlib 1.2.8)
```
succeeded:
0.6.2 0.7.1 0.7.2 0.7.3

failed:
0.7.4 0.7.5 0.7.7 0.7.8 0.7.11 0.7.12
```


2) Unsupported major.minor version (java)

When running bds (BigDataScript), you get the following error if you have lower version of java or high version of java is not selected as default.

Solution:
```
# install latest version of java

# for Fedora based linux (Red Hat, ...)
$ sudo apt-get install openjdk-8-jre

# fr Debian based linux (Ubuntu, ...)
$ sudo yum install java-1.8.0-openjdk

# choose the latest java as default
$ sudo update-alternatives --config java
```


3) /bin/bash: module: line 1: syntax error: unexpected end of file

If see the following error when you submit jobs to Sun Grid Enginee,
```
/bin/bash: module: line 1: syntax error: unexpected end of file
```

Check if your $HOME/.bashrc has any errorneous lines.

Remove the following line in you module initialization scripts ($MODULESHOME/init/bash or /etc/profile.d/modules.sh).
```
export -f module
```


4) Cannot allocate memory (bwa fails due to lack of memory)

An example of a failed job due to lack of memory (desktop with 4 cores and 12 GB of memory):

```
[bam_header_read] EOF marker is absent. The input is probably truncated.
[bwa_read_seq] 0.0% bases are trimmed.
[bwa_aln_core] convert to sequence coordinate... [bwt_restore_sa] Failed to allocate 1547846992 bytes at bwt.c line 404: Cannot allocate memory
[samopen] SAM header is present: 25 sequences.
[sam_read1] reference 'ID:bwa   PN:bwa  VN:0.7.3-r789   CL:bwa samse /home/leepc12/run/index/encodeHg19Male_bwa-0.7.3.fa /home/leepc12/run/ENCSR000EGM3/out/TEST_Rep2.sai /home/leepc12/run/ENCODE/ENCFF000YLY.fastq.gz
' is recognized as '*'.
[main_samview] truncated file.
```

Solution: balance memory usage between parallel jobs or disable parallel jobs (add '-no_par')

```
$ bds chipseq.bds -no_par ...
```



5) [samopen] no @SQ lines in the header. ( bwa sam failure )

For computers with limited memory, bwa samse/sampe fails without non-zero exit value. This leads to a failure of a pipeline or corruption of outputs.

Solution: balance memory usage between parallel jobs or disable parallel jobs (add '-no_par')

```
$ bds chipseq.bds -no_par ...
```



6) Unable to run job: unknown resource "'mem"

Replace `$HOME/.bds/bds.config` with the one in the repo.
```
$ cp /path/to/repo/bds.config $HOME/.bds/
```


7) Unable to access jarfile /picard.jar

Define a shell variable `PICARDROOT` for your environment. Add the following to your `~/.bashrc` or conda `activate`:
```
export PICARDROOT=/path/to/your/picard-tool
```

8) awk: cmd. line:1: fatal: division by zero attempted

This error happens when picard tool's MarkDuplicate is running out of memory.
Balance memory usage among parallel tasks, add `-no_par` or reduce level of parallelization (`-par_lvl [PARALLEL_LEVEL <= 2]`).



### Contributors

* Jin wook Lee - PhD Student, Mechanical Engineering Dept., Stanford University
* Anshul Kundaje - Assistant Professor, Dept. of Genetics, Stanford University
