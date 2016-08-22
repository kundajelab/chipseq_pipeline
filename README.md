AQUAS ChIP-Seq pipeline
==============

* Jump to [Usage](#usage)
* Jump to [Troubleshooting](#troubleshooting)

# Introduction

The AQUAS pipeline is based off the ENCODE (phase-3) transcription factor ChIP-seq pipeline specifications (by Anshul Kundaje) in [this google doc](https://docs.google.com/document/d/1lG_Rd7fnYgRpSIqrIfuVlAz2dW1VaSQThzk836Db99c/edit#) . However, please note that this is NOT the official ENCODE (phase-3) pipeline but rather a free and open-source implementation that adheres to the specifications. The official ENCODE (phase-3) pipeline is being implemented by the ENCODE DCC on a cloud computing platform knows as DNAnexus.It will be released shortly by the ENCODE DCC and will be linked to from this site as well. The official DNAnexus pipeline is open-source as well. However, users need to create an account on DNAnexus and pay for cloud compute. We have created this free version as an alternative for those who might have access to local compute infrastructure and not necessarily want to pay for DNAnexus cloud compute. We have run extensive tests to make sure the output of AQUAS and the official DNAnexus pipeline match exactly. We plan to continue making sure AQUAS and the DNAnexus implementation continue to remain in sync.

# Installation

* General computer
  * [Java](#java)
  * [Conda](#conda)
  * [BigDataScript](#bigdatascript)
  * [AQUAS Pipeline](#aquas-pipeline)
  * [Dependencies](#dependencies)
  * [Genome data](#genome-data)

* Kundaje lab's clusters
  * [AQUAS Pipeline](#aquas-pipeline)

* Stanford SCG cluster
  * [Conda](#conda)
  * [BigDataScript](#bigdatascript)
  * [AQUAS Pipeline](#aquas-pipeline)
  * [Dependencies](#dependencies)

* Stanford Sherlock cluster
  * [Conda](#conda)
  * [BigDataScript](#bigdatascript)
  * [AQUAS Pipeline](#aquas-pipeline)
  * [Dependencies](#dependencies)

## Java

Install Java 8 (jdk >= 1.8 or jre >= 1.8) on your system. If you don't have super-user privileges on your system, locally install it and add it to your `$PATH`.

* For Debian/Ubuntu (>14.10) based Linux:

     ```
     $ sudo apt-get install git openjdk-8-jre
     ```

* For Fedora/Red-Hat based Linux: 
 
     ```
     $ sudo yum install git java-1.8.0-openjdk
     ```

* For Ubuntu 14.04 (trusty):

     ```
     $ sudo add-apt-repository ppa:webupd8team/java -y
     $ sudo apt-get update
     $ sudo apt-get install oracle-java8-installer
     ```

## Conda

Install Miniconda3 [4.0.5](https://repo.continuum.io/miniconda/Miniconda3-4.0.5-Linux-x86_64.sh) on your system. Recent versions of conda (>4.0.10) is buggy in parallel activation and do not work correctly with the pipeline. If you already have your own conda, downgrade it to 4.0.5 (`conda install conda==4.0.5`).

```
$ wget https://repo.continuum.io/miniconda/Miniconda3-4.0.5-Linux-x86_64.sh
$ bash Miniconda3-4.0.5-Linux-x86_64.sh
```

Answer `yes` for the final question. If you choose `no`, you need to manually add Miniconda3 to your `$HOME/.bashrc`.

```
Do you wish the installer to prepend the Miniconda3 install location
to PATH in your /your/home/.bashrc ? [yes|no]
[no] >>> yes
```

Remove any other Anaconda from your `$PATH`. Check your loaded modules with `$ module list` and unload any Anaconda modules in your `$HOME/.bashrc`. Open a new terminal after installation.

## BigDataScript

Install BigDataScript v0.99999e ([forked](https://github.com/leepc12/BigDataScript), [original](https://github.com/pcingola/BigDataScript)) on your system.

```
$ wget https://github.com/leepc12/BigDataScript/blob/master/distro/bds_Linux.tgz?raw=true -O bds_Linux.tgz
$ mv bds_Linux.tgz $HOME && cd $HOME && tar zxvf bds_Linux.tgz
```

Add `export PATH=$PATH:$HOME/.bds` to your `$HOME/.bashrc`. If Java memory occurs, add `export _JAVA_OPTIONS="-Xms256M -Xmx728M -XX:ParallelGCThreads=1"` too.


## AQUAS Pipeline

Get the latest version of the pipeline.

```
$ git clone https://github.com/kundajelab/TF_chipseq_pipeline
```

## Dependencies

Install software dependencies automatically. It will create two conda environments (aquas_chipseq and aquas_chipseq_py3) under your conda.

```
$ ./install_dependencies.sh
```

If you see the following error, see [issue #8](https://github.com/kundajelab/TF_chipseq_pipeline/issues/8)

```
Error: ERROR: placeholder '/root/miniconda3/envs/_build_placehold_placehold_placehold_placehold_placehold_p' too short in: glib-2.43.0-2
```

If you don't use `install_dependencies.sh`, manually replace BDS's default `bds.config` with a correct one:

```
$ cp bds.config ./utils/bds_scr $HOME/.bds
```

If `install_dependencies.sh` fails, run `./uninstall_dependencies.sh`, fix problems and then try `./install_dependencies.sh` again.

If you have super-user privileges on your system, it is recommended to install Miniconda3 on `/opt/miniconda3/` and share conda environment with others.

```
$ sudo su
$ ./install_dependencies.sh
$ chmod 755 -R /opt/miniconda3/  # if you get some annoying permission issues.
```

In order to make Miniconda3 accessible for all users, create an intialization script `/etc/profile.d/conda_init.sh`.

```
$ echo '#!/bin/bash' > /etc/profile.d/conda_init.sh
$ echo 'export PATH=$PATH:/opt/miniconda3/bin' >> /etc/profile.d/conda_init.sh
```

## Genome data

Install genome data for a specific genome `[GENOME]`. Currently `hg19`, `mm9`, `hg38`(BETA) and `mm10`(BETA) are available. Specify a directory `[DATA_DIR]` to download genome data. A species file generated on `[DATA_DIR]` will be automatically added to your `./default.env` so that the pipeline knows that you have installed genome data using `install_genome_data.sh`. If you want to install multiple genomes make sure that you use the same directory `[DATA_DIR]` for them. Each genome data will be installed on `[DATA_DIR]/[GENOME]`. If you use other BDS pipelines, it is recommended to use the same directory `[DATA_DIR]` to save disk space.

**IMPORTANT**: `install_genome_data.sh` can take longer than an hour for downloading data and building index. **DO NOT** run the script on a login node, use `qlogin` for SGE and `sdev` for SLURM.

```
# DO NOT run this on a login node
$ ./install_genome_data.sh [GENOME] [DATA_DIR]
```

If you have super-user privileges on your system, it is recommended to install genome data on `/your/data/bds_pipeline_genome_data` and share them with others.

```
$ sudo su
$ ./install_genome_data.sh [GENOME] /your/data/bds_pipeline_genome_data
```

You can find a species file `[SPECIES_FILE]` on `/your/data/bds_pipeline_genome_data` for each pipeline type. Then others can use the genome data by adding `-species_file [SPECIES_FILE_PATH]` to the pipeline command line. Or they need to add `species_file = [SPECIES_FILE_PATH]` to the section `[default]` in their `./default.env`.

# Usage

We recommend using BASH to run pipelines. 

## Command line / configuration file

There are two ways to define parameters for ChIP-Seq pipelines. Default values are already given for most of them. Take a look at example commands and configuration files (`./examples`). Two methods share the same key names. AQUAS pipeline is multi-threaded. Set up maximum number of processors with `-nth`.

1. Parameters from command line arguments: 

      ```
      $ bds chipseq.bds -species [SPECIES] -nth [NUM_THREADS] -fastq1 ... -fastq2 ... -ctl_fastq ...
      ```

2. Parameters from a configuration file: 

      ```
      $ bds chipseq.bds [CONF_FILE]

      # configuration file
      species= hg19
      fastq1= /DATA/ENCFF000YLW.fastq.gz
      fastq2= /DATA/ENCFF000YLY.fastq.gz
      ctl_fastq1= /DATA/Ctl/ENCFF000YRB.fastq.gz
      ```

You can override any parameters defined in a configuration file by adding them to the command line.

To list all parameters: `$ bds chipseq.bds`

## Stopping / Resuming pipeline

Press Ctrl + C on a terminal or send any kind of kill signals to it. Please note that this will delete all intermediate files and incomplete outputs for the running tasks. AQUAS pipeline automatically determines if each task has finished or not (by comparing timestamps of input/output files for each task). To run the pipeline from the point of failure, correct error first and then just run the pipeline with the same command that you started the pipeline with. There is no additional parameter for restarting the pipeline.

## Running pipelines with a cluster engine

**IMPORTANT!** On servers with a cluster engine (such as Sun Grid Engine and SLURM), **DO NOT QSUB/SBATCH BDS COMMAND LINE**. Run BDS command directly on login nodes. BDS is a task manager and it will automatically submit(qsub/sbatch) and manage its sub tasks.

## Histone ChIP-Seq

Simply add `-histone` or `-type histone` to the command line. Peaks will be called with MACS2 only and those peaks will be used for naive overlap thresholding. No IDR for histone ChIP-Seq.

## Input data type

There are five data types; `fastq`, `bam`, `filt_bam`, `tag` and `peak`.

* For exp. replicates: define data path with `-[DATA_TYPE][REPLICATE_ID]`.
* For contols: define data path with `-ctl_[DATA_TYPE][CONTROL_ID]`.

You can skip `[REPLICATE_ID]` or `[CONTROL_ID]` if it's 1. (eg. `-fastq`, `-ctl_bam`, `-tag`, ... ). Except for fastq, add `-pe` if your data set is **PAIRED-END**. You can also individually specify endedness for each replicate; `-pe[REPLICATE_ID]` for exp. replicates, `-ctl_pe[CONTROL_ID]` for controls.

* Starting from fastqs: see the example in the previous section

* Starting from bams: 

     ```
     $ bds chipseq.bds -species hg19 -pe -bam1 /DATA/REP1.bam -bam2 /DATA/REP2.bam -ctl_bam /DATA/CTL.bam ...
     ```

* Starting from deduped / filtered bams:

     ```
     $ bds chipseq.bds -species hg19 -se -filt_bam1 /DATA/REP1.filt.bam -filt_bam2 /DATA/REP2.filt.bam -ctl_filt_bam /DATA/CTL.filt.bam ...
     ```

* Starting from tagaligns:

     ```
     $ bds chipseq.bds -species mm9 -pe -tag1 /DATA/REP1.tagAlign.gz -tag2 /DATA/REP2.tagAlign.gz -ctl_tag /DATA/CTL.tagAlign.gz
     ```

* Starting from narrow peak / region peak files:

     ```
     $ bds chipseq.bds -species hg19 -peak1 /DATA/Example1.regionPeak.gz -peak2 /DATA/Example2.regionPeak.gz -peak_pooled /DATA/Example.pooled.regionPeak.gz ...
     ```

  If you want do perform full IDR including pseudo-replicates and pooled pseudo-replicates, add the following to the command line.
  * For IDR on pseduro replicates of replicate 1: `-peak1_pr1 [PEAK1_PR1] -peak1_pr2 [PEAK1_PR2]`
  * For IDR on pseduro replicates of replicate 2: `-peak2_pr1 [PEAK2_PR1] -peak2_pr2 [PEAK2_PR2]`
  * For IDR on pseduro replicates of replicate N: `-peakN_pr1 [PEAK2_PR1] -peakN_pr2 [PEAK2_PR2]`
  * For IDR on pooled pseduro replicates: `-peak_ppr1 [PEAK_PPR1] -peak_ppr2 [PEAK_PPR2]`

* Mixing up input types: 

     ```
     $ bds chipseq.bds -species mm9 -se -fastq1 /DATA/REP1.fastq.gz -bam2 /DATA/ENCSR000EGM/REP2.bam -ctl_tag /DATA/CTL.tagAlign.gz
     ```

## Endedness (SE/PE)

All data are treated as **SINGLED-ENDED** if endedness is not explicltly specifed. Endedness is automatically detected for fastqs.

Add `-pe` to the command line if all data set are paired-end. You can also individually specify endedness for each replicate.

* For exp. replicates: `-pe[REPLICATE_ID]`
* For controls: `-ctl_pe[CONTROL_ID]`

For fastqs, you do not need to add '-pe' since the pipeline will automatically determine it according to indices in command line parameters.

* For exp. replicates:
  * Define data path as -fastq[REPLICATE_ID], then it's SE (single ended).
  * Define data path as -fastq[REPLICATE_ID]_[PAIRING_ID], then it's PE.

* For controls:
  * Define data path as -ctl_fastq[REPLICATE_ID], it's SE.
  * Define data path as -ctl_fastq[REPLICATE_ID]_[PAIRING_ID], it's PE.

* Example: 2 replicates and 1 control replicate (all SE)

     ```
     $ bds chipseq.bds -species hg19 -fastq1 /DATA/REP1.fastq.gz -fastq2 /DATA/REP2.fastq.gz -ctl_fastq1 /DATA/CTL.fastq.gz
     ```
      
* Example: 2 replicates and 2 control replicates (all PE)

     ```
     $ bds chipseq.bds -species hg19 -fastq1_1 /DATA/REP1_1.fastq.gz -fastq1_2 /DATA/REP1_2.fastq.gz -fastq2_1 /DATA/REP2_1.fastq.gz -fastq2_2 /DATA/REP2_2.fastq.gz -ctl_fastq1_1 /DATA/Ctl/CTL_1_1.fastq.gz -ctl_fastq1_2 /DATA/Ctl/CTL_1_2.fastq.gz -ctl_fastq2_1 /DATA/Ctl/CTL_2_1.fastq.gz -ctl_fastq2_2 /DATA/Ctl/CTL_2_1.fastq.gz
     ```

You can mix up not only data types but also endedness.

* Example: 1 SE fastq, 1 PE bam and 1 PE control tagalign

     ```
     $ bds chipseq.bds -species hg19 -fastq1 /DATA/REP1.fastq.gz -pe2 -bam2 /DATA/REP2.bam -pe_ctl -ctl_tag /DATA/CTL.tagAlign.gz
     ```

## Pipeline steps

AQUAS pipeline goes through the following stages:

* bam          : mapping (fastq -> bam)
* filt_bam     : filtering and deduping bam (bam -> filt_bam)
* tag          : creating tagalign (filt_bam -> tagalign)
* xcor         : cross-correlation analysis (tagalign -> xcor plot.pdf/score.txt )
* peak         : peak calling (tagalign -> peak)
* idr          : IDR (peaks -> IDR score and peaks)

AQUAS pipeline stops right after `-final_stage [STAGE]`. It is useful if you are not interested in peak calling and want to map/align lots of genome data (fastq, bam or filt_bam) IN PARALLEL.

## Parallelization

For completely serialized jobs, add `-no_par` to the command line. Individual tasks can still go multi-threaded.

**IMPORTANT!** You can set up a limit for total number of threads with `-nth [MAX_TOTAL_NO_THREADS]`. Total number of threads used by a pipeline will not exceed this limit.

Default `-nth` for each cluster is defined on `./default.env` (e.g. 16 on SCG and 8 on Kundaje lab cluster)

The pipeline automatically distributes `[MAX_TOTAL_NO_THREADS]` threads for jobs according to corresponding input file sizes. For example of two fastqs (1GB and 2GB) with `-nth 6`, 2 and 4 threads are allocated for aligning 1GB and 2GB fastqs, respectively. The same policy applies to other multi-threaded tasks like deduping and peak calling.

However, all multi-threaded tasks (like bwa, bowtie2, spp and macs2) still have their own max. memory (`-mem_APPNAME [MEM_APP]`) and walltime (`-wt_APPNAME [WALLTIME_APP]`) settings. Max. memory is **NOT PER CPU**. For example on Kundaje lab cluster (with SGE flag activated `bds -s sge chipseq.bds ...`) or on SCG4, the actual shell command submitted by BDS for each task is like the following:

```
qsub -V -pe shm [NTH_ALLOCATED_FOR_APP] -h_vmem=[MEM_APP]/[NTH_ALLOCATED_FOR_APP] -h_rt=[WALLTIME_APP] -s_rt=[WALLTIME_APP] ...
```

This ensures that total memory reserved for a cluster job equals to `[MEM_APP]`. The same policy applies to SLURM.

## Managing multiple pipelines

`./utils/bds_scr` is a BASH script to create a detached screen for a BDS script and redirect stdout/stderr to a log file `[LOG_FILE_NAME]`. If a log file already exists, stdout/stderr will be appended to it.

Monitor the pipeline with `tail -f [LOG_FILE_NAME]`. The only difference between `bds_scr` and `bds` is that you have `[SCR_NAME] [LOG_FILE_NAME]` between `bds` command and its parameters (or a BDS script name).

You can skip `[LOG_FILE_NAME]` then a log file `[SCR_NAME].log` will be generated on the working directory.

You can also add any BDS parameters (like `-dryRun`, `-d` and `-s`). The following example is for running a pipeline on Sun Grid Engine.

```
$ bds_scr [SCR_NAME] [LOG_FILE_NAME] chipseq.bds ...
$ bds_scr [SCR_NAME] chipseq.bds ...
$ bds_scr [SCR_NAME] -s sge chipseq.bds ...
```

Once the pipeline run is done, the screen will be automatically closed. To kill a pipeline manually while it's running, use `./utils/kill_scr` or `screen -X quit`:

```
$ screen -X -S [SCR_NAME] quit
$ kill_scr [SCR_NAME]
```

## Useful HTML reports

There are two kinds of HTML reports provided by the pipeline.

* BigDataScript HTML report for debugging: Located at the working folder with name chipseq_[TIMESTAMP]_report.html. This report is automatically generated by BigDataScript and is useful for debugging since it shows summary, timeline, Stdout and Stderr for each job.

* ChIP-Seq pipeline report for QC and result: The pipeline automatically generate a nice HTML report (Report.html) on its output directory (specified with -out_dir or just './out'). It summarizes files and directory structure, includes QC reports and show a workflow diagram and genome browser tracks for peaks and signals (bigwigs for pValue and fold change). Move your output directory to a web directory (for example, /var/www/somewhere) or make a softlink of it to a web directory. For genome browser tracks, specify your web directory root for your output  While keeping its structure. Make sure that you have bgzip and tabix installed on your system. Add the following to the command line:

      -url_base http://your/url/to/output -title [PREFIX_FOR_YOUR_REPORT]

## Temporary files

If you stop a BDS pipeline with `Ctrl+C` while calling peaks with `spp`. Temporary files generated by `Rscript` are not removed and they are still on `$TMP` (or `/tmp` if not explicitly exported). You need to manually remove them.

## Coding with BDS

* [Using modules in AQUAS pipeline](https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_CODE.md)

* [BigDataScript github repo](https://github.com/pcingola/BigDataScript)

* [BigDataScript documentation](http://pcingola.github.io/BigDataScript/bigDataScript_manual.html)

# Requirements 

* For python2 (python 2.x >= 2.7) and R-3.x, [requirements.txt](https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/requirements.txt)

* For python3, [requirements_py3.txt](https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/requirements_py3.txt)

# Troubleshooting

See [more troubleshootings](README_PIPELINE.md/#troubleshooting).

### "[gzclose] buffer error" during bwa aln

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
Solution1 (BEST): Use bwa-0.7.3 or bwa-0.6.2.

```
$ git clone https://github.com/lh3/bwa bwa-0.7.3
$ cd bwa-0.7.3
$ git checkout tags/0.7.3
$ make
$ ./bwa
```

Then, append `-addpath /path/to/your/bwa` to your command line.

Solution2: [Upgrade zlib to 1.2.8](https://github.com/MikkelSchubert/paleomix/wiki/BAM-pipeline-specific-troubleshooting#4.3.)

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

* successful: 0.6.2 0.7.1 0.7.2 0.7.3
* failed: 0.7.4 0.7.5 0.7.7 0.7.8 0.7.11 0.7.12

### Cannot allocate memory (bwa fails due to lack of memory)

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

### [samopen] no @SQ lines in the header. ( bwa sam failure )

For computers with limited memory, bwa samse/sampe fails without non-zero exit value. This leads to a failure of a pipeline or corruption of outputs.

Solution: balance memory usage between parallel jobs or disable parallel jobs (add '-no_par')

```
$ bds chipseq.bds -no_par ...
```

### Error: could not find environment: aquas_chipseq

Unload any Anaconda Python modules. Remove locally installed Anaconda Python from your `$PATH`

### SPP error: `In min(npld$y[npld$fdr <= fdr])`

```
Warning message:
In min(npld$y[npld$fdr <= fdr]) :
  no non-missing arguments to min; returning Inf
excluding systematic background anomalies ... done
calculating statistical thresholds
FDR 0.99 threshold= Inf
Detected 0 peaks
```

Check if number of reads in your control tagalign is too high, and then reduce it with `-subsample_ctl [NO_READ_TO_SUBSAMPLE_CONTROL]`.
Try with half of the original number of reads in control.


# Contributors

* Jin wook Lee - PhD Student, Mechanical Engineering Dept., Stanford University
* Anshul Kundaje - Assistant Professor, Dept. of Genetics, Stanford University
