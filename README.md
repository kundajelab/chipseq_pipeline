AQUAS Transcription Factor and Histone ChIP-Seq processing pipeline
==============

* Go to [Genomic pipelines in Kundaje lab](https://kundajelab.github.io/bds_pipeline_modules)
* Go to [Discussion channel](https://groups.google.com/forum/#!forum/klab_genomic_pipelines_discuss)
* Jump to [Usage](#usage)
* Jump to [Troubleshooting](#troubleshooting)

# Introduction

The AQUAS pipeline is based off the ENCODE (phase-3) transcription factor and histone ChIP-seq pipeline specifications (by Anshul Kundaje) in [this google doc](https://docs.google.com/document/d/1lG_Rd7fnYgRpSIqrIfuVlAz2dW1VaSQThzk836Db99c/edit#) . However, please note that this is NOT the official ENCODE (phase-3) pipeline but rather a free and open-source implementation that adheres to the specifications. The official ENCODE (phase-3) pipeline is being implemented by the ENCODE DCC on a cloud computing platform knows as DNAnexus.It will be released shortly by the ENCODE DCC and will be linked to from this site as well. The official DNAnexus pipeline is open-source as well. However, users need to create an account on DNAnexus and pay for cloud compute. We have created this free version as an alternative for those who might have access to local compute infrastructure and not necessarily want to pay for DNAnexus cloud compute. We have run extensive tests to make sure the output of AQUAS and the official DNAnexus pipeline match exactly. We plan to continue making sure AQUAS and the DNAnexus implementation continue to remain in sync.

# Installation

Install software/database in a correct order according to your system. For example on Kundaje lab's clusters, you only need to install one software [Pipeline](#pipeline).

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

Install Miniconda3 [latest](https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh) on your system. **IMPORTANT** Make sure that the absolute path of the destination directory is short. Long path will cause an error in the depenecies installation step [issue #8](https://github.com/kundajelab/TF_chipseq_pipeline/issues/8).

```
$ wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
$ bash Miniconda3-latest-Linux-x86_64.sh
```

Answer `yes` for the final question. If you choose `no`, you need to manually add Miniconda3 to your `$HOME/.bashrc`.

```
Do you wish the installer to prepend the Miniconda3 install location
to PATH in your /your/home/.bashrc ? [yes|no]
[no] >>> yes
```

Remove any other Anaconda from your `$PATH`. Check your loaded modules with `$ module list` and unload any Anaconda modules in your `$HOME/.bashrc`. Open a new terminal after installation.

## BigDataScript

Install BigDataScript v0.99999e ([forked](https://github.com/leepc12/BigDataScript)) on your system.
The original [BDS v0.99999e](https://github.com/pcingola/BigDataScript) does not work correctly with the pipeline 
(see [PR #142](https://github.com/pcingola/BigDataScript/pull/142) and [issue #131](https://github.com/pcingola/BigDataScript/issues/131)).

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
$ bash install_dependencies.sh
```

If you don't use `install_dependencies.sh`, manually replace BDS's default `bds.config` with a correct one:

```
$ cp bds.config ./utils/bds_scr $HOME/.bds
```

If `install_dependencies.sh` fails, run `./uninstall_dependencies.sh`, fix problems and then try `bash install_dependencies.sh` again.

## Genome data

Install genome data for a specific genome `[GENOME]`. Currently `hg19`, `mm9`, `hg38` and `mm10` are available. Specify a directory `[DATA_DIR]` to download genome data. A species file generated on `[DATA_DIR]` will be automatically added to your `./default.env` so that the pipeline knows that you have installed genome data using `install_genome_data.sh`. If you want to install multiple genomes make sure that you use the same directory `[DATA_DIR]` for them. Each genome data will be installed on `[DATA_DIR]/[GENOME]`. If you use other BDS pipelines, it is recommended to use the same directory `[DATA_DIR]` to save disk space.

**IMPORTANT**: `install_genome_data.sh` can take longer than an hour for downloading data and building index. **DO NOT** run the script on a login node, use `qlogin` for SGE and `srun --pty bash` for SLURM.

```
# DO NOT run this on a login node
$ bash install_genome_data.sh [GENOME] [DATA_DIR]
```

If you have super-user privileges on your system, it is recommended to install genome data on `/your/data/bds_pipeline_genome_data` and share them with others.

```
$ sudo su
$ bash install_genome_data.sh [GENOME] /your/data/bds_pipeline_genome_data
```

You can find a species file `[SPECIES_FILE]` on `/your/data/bds_pipeline_genome_data` for each pipeline type. Then others can use the genome data by adding `-species_file [SPECIES_FILE_PATH]` to the pipeline command line. Or they need to add `species_file = [SPECIES_FILE_PATH]` to the section `[default]` in their `./default.env`.

# Installation for internet-free computers

AQUAS pipeline does not need internet connection but installers (`install_dependencies.sh` and `install_genome_data.sh`) do need it. So the workaround should be that first install dependencies and genome data on a computer that is connected to the internet and then move Conda and genome database directories to your internet-free one. Both computers should have **THE SAME LINUX VERSION**. 

* On your computer that has an internet access,
  * Follow [the installation instruction for general computers](#installation)
  * Move your Miniconda3 directory to `$HOME/miniconda3` on your internet-free computer.
  * Move your genome database directory, which has `aquas_chipseq_species.conf` and directories per species, to `$HOME/genome_data` on your internet-free computer. `$HOME/genome_data` on your internet-free computer should have `aquas_chipseq_species.conf`.
  * Move your BDS directory `$HOME/.bds` to `$HOME/.bds` on your internet-free computer.
  * Move your pipeline directory `chipseq_pipelines/` to `$HOME/chipseq_pipelines/` on your internet-free computer.

* On your internet-free computer,
  * Add your `miniconda3/bin` and BDS binary to `$PATH` in your bash initialization script (`$HOME/.bashrc` or `$HOME/.bash_profile`).

     ```
     export PATH="$PATH:$HOME/miniconda3/bin"
     export PATH="$PATH:$HOME/.bds"
     ```

  * Modify `[default]` section in `$HOME/chipseq_pipelines/default.env`.

     ```
     [default]
     conda_bin_dir=$HOME/miniconda3/bin
     species_file=$HOME/genome_data/aquas_chipseq_species.conf
     ```

* Modify all paths in `$HOME/genome_data/aquas_chipseq_species.conf` so that they correctly point to the right files.
* Check BDS version.

     ```
     $ bds -version
     Bds 0.99999e (build 2016-08-26 06:34), by Pablo Cingolani
     ```

* Make sure that your java rumtime version is >= 1.8.

     ```
     $ java -version
     java version "1.8.0_111"
     Java(TM) SE Runtime Environment (build 1.8.0_111-b14)
     Java HotSpot(TM) 64-Bit Server VM (build 25.111-b14, mixed mode)
     ```

# Usage

We recommend using BASH to run pipelines. 

## Command line arguments / configuration JSON file

**IMPORTANT!** The latest version of the pipeline includes a Python wrapper `chipseq.py` to parse command line arguments and JSON configuration file. `python chipseq.py` takes the same command line arguments as in the original `bds chipseq.bds`. However, `chipseq.py` takes in JSON configuration file instead of the original INI one.

There are two ways to define parameters for ChIP-Seq pipelines. Default values for most of those parameters are already given. Take a look at example commands and configuration files in [examples](examples). AQUAS pipeline is multi-threaded. Set up maximum number of processors with `-nth`.

1. Parameters from command line arguments: Any of three positional arguments can be skipped. Then default values will be used for skipped ones. Choose `[CHIPSEQ_TYPE]` between `TF` (default) and `histone`. You can also specify it with `-type [CHIPSEQ_TYPE]`. You can stop the pipeline at the end of any stage. Choose `[FINAL_STAGE]` among `bam`, `filt_bam`, `tag`, `xcor`, `peak` and `idr` (default). You can also specify it with `-final_stage [FINAL_STAGE]`. See [Pipeline steps](#pipeline-steps) for details about pipeline stages.

      ```
      $ python chipseq.py [CHIPSEQ_TYPE] [FINAL_STAGE] [CONF_JSON_FILE] -species [SPECIES] -nth [NUM_THREADS] -fastq1 ... -fastq2 ... -ctl_fastq1 ...
      ```

2. Parameters from a configuration JSON file: Note that both command line arguments and a configruation JSON share the same key name. In a configuration JSON, only the deepest keys and values are taken. Any JSON structure/hierachy to group those keys is allowed. See [full example JSON](example_conf_full.json) and [reduced example JSON](example_conf.json) how to group keys.

      ```
      $ python chipseq.py [CONF_JSON_FILE]

      # CONF_JSON_FILE (can work without group hierachy)
      {
        "type" : "[CHIPSEQ_TYPE]",
        "final_stage" : "[FINAL_STAGE]"
        "fastq1" : "...",
        "fastq2" : "...",
        "ctl_fastq1" : "...",
        ...
        "species" : "hg19",
        "nth" : [NUM_THREADS]
      }
      ```

3. You can mix up method 1 and 2. Parameters specied in command line arguments will override the other.

To list all parameters: `$ python chipseq.py -h`

## Stopping / Resuming pipeline

Press Ctrl + C on a terminal or send any kind of kill signals to it. Please note that this will delete all intermediate files and incomplete outputs for the running tasks. AQUAS pipeline automatically determines if each task has finished or not (by comparing timestamps of input/output files for each task). To run the pipeline from the point of failure, correct error first and then just run the pipeline with the same command that you started the pipeline with. There is no additional parameter for restarting the pipeline.

## Running pipelines with a cluster engine

On servers with a cluster engine (such as Sun Grid Engine and SLURM), **DO NOT QSUB/SBATCH BDS COMMAND LINE**. Run BDS command directly on login nodes. BDS is a task manager and it will automatically submit(qsub/sbatch) and manage its sub tasks. You can choose `[CLUSTER_ENGINE]` between `sge` (default on Kundaje clusters and SCG4), `slurm` (default on Sherlock) and `local` (default for others). You can also let BDS submit its subtasks to a specific queue/partition `[QUEUE_NAME]` on Sun Grid Engine or SLURM.

```
$ python chipseq.py -system [CLUSTER_ENGINE] ...
$ python chipseq.py -system [CLUSTER_ENGINE] -q [QUEUE_NAME] ...
```

**IMPORTANT!** Please read this section carefully if you run pipelines on Stanford SCG4 and Sherlock cluster.

Most clusters have a policy to limit number of threads and memory per user on a login node. One BDS process, as a Java-based task manager, takes up to 1GB of memory and 50 threads even though it just submits/monitors subtasks. So if you want to run more than 50 pipelines in parallel, your cluster will kill BDS processes due to resource limit on a login node (check resource limit per user with `ulimit -a`). For example of 50 pipelines, 50 GB of memory and 2500 threads will be taken by 50 BDS processes. So the Workaround for this is to make an interactive node to keep all BDS processes alive. Such interactive node must have long walltime enough to wait for all pipelines in it to finish. Recommended resource setting is 1.0GB memory per pipeline.

SGE example to make an interactive node for 100 pipelines: 1 cpu, 100GB memory, 3 days walltime.

```
$ qlogin -l h_rt=72:00:00 -l h_vmem=100G
```

SLURM example to make an interactive node for 100 pipelines: 1 cpu, 100GB memory, 3 days walltime.

```
$ srun -n 1 --mem 100G -t 3-0 -p [YOUR_PARTITON] --qos normal --pty /bin/bash -i -l 
```

Once you get an interactive node, repeat the following commands per sample to run a pipeline.

```
$ cd [WORK_DIR]
$ python chipseq.py -screen [SCREEN_NAME] -q [SGE_QUEUE_OR_SLURM_PARTITION] -nth [MAX_NUM_THREAD_PER_PIPELINE] ...
$ sleep 2 # wait for 2 seconds for safety
```

Then you can monitor your pipelines with `screen -ls` and `tail -f [WORK_DIR]/[SCREEN_NAME].BSD.log`. If you want to run more than 200 pipelines, you would want to make multiple interactive nodes and distribute your samples to them.

## Input data type

There are five data types; `fastq`, `bam`, `filt_bam`, `tag` and `peak`.

* For exp. replicates: define data path with `-[DATA_TYPE][REPLICATE_ID]`.
* For contols: define data path with `-ctl_[DATA_TYPE][CONTROL_ID]`.

You can skip `[REPLICATE_ID]` or `[CONTROL_ID]` if it's 1. (eg. `-fastq`, `-ctl_bam`, `-tag`, ... ). Except for fastq, add `-pe` if your data set is **PAIRED-END**. You can also individually specify endedness for each replicate; `-pe[REPLICATE_ID]` for exp. replicates, `-ctl_pe[CONTROL_ID]` for controls.

* Starting from fastqs: see the example in the previous section

* Starting from paired end bams: 

     ```
     $ python chipseq.py -species hg19 -pe -bam1 /DATA/REP1.bam -bam2 /DATA/REP2.bam -ctl_bam /DATA/CTL.bam ...
     ```

* Starting from singled-ended deduped / filtered bams:

     ```
     $ python chipseq.py -species hg19 -se -filt_bam1 /DATA/REP1.filt.bam -filt_bam2 /DATA/REP2.filt.bam -ctl_filt_bam /DATA/CTL.filt.bam ...
     ```

* Starting from paired end tagaligns:

     ```
     $ python chipseq.py -species mm9 -pe -tag1 /DATA/REP1.tagAlign.gz -tag2 /DATA/REP2.tagAlign.gz -ctl_tag /DATA/CTL.tagAlign.gz
     ```

* Starting from narrow/relaxed(region) peak files:

     ```
     $ python chipseq.py -species hg19 -peak1 /DATA/Example1.regionPeak.gz -peak2 /DATA/Example2.regionPeak.gz -peak_pooled /DATA/Example.pooled.regionPeak.gz ...
     ```

  If you want do perform full IDR including pseudo-replicates and pooled pseudo-replicates, add the following to the command line.
  * For IDR on pseduro replicates of replicate 1: `-peak1_pr1 [PEAK1_PR1] -peak1_pr2 [PEAK1_PR2]`
  * For IDR on pseduro replicates of replicate 2: `-peak2_pr1 [PEAK2_PR1] -peak2_pr2 [PEAK2_PR2]`
  * For IDR on pseduro replicates of replicate N: `-peakN_pr1 [PEAK2_PR1] -peakN_pr2 [PEAK2_PR2]`
  * For IDR on pooled pseduro replicates: `-peak_ppr1 [PEAK_PPR1] -peak_ppr2 [PEAK_PPR2]`

* Mixing up input types: 

     ```
     $ python chipseq.py -species mm9 -se -fastq1 /DATA/REP1.fastq.gz -bam2 /DATA/ENCSR000EGM/REP2.bam -ctl_tag /DATA/CTL.tagAlign.gz
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
     $ python chipseq.py -species hg19 -fastq1 /DATA/REP1.fastq.gz -fastq2 /DATA/REP2.fastq.gz -ctl_fastq1 /DATA/CTL.fastq.gz
     ```
      
* Example: 2 replicates and 2 control replicates (all PE)

     ```
     $ python chipseq.py -species hg19 -fastq1_1 /DATA/REP1_1.fastq.gz -fastq1_2 /DATA/REP1_2.fastq.gz -fastq2_1 /DATA/REP2_1.fastq.gz -fastq2_2 /DATA/REP2_2.fastq.gz -ctl_fastq1_1 /DATA/Ctl/CTL_1_1.fastq.gz -ctl_fastq1_2 /DATA/Ctl/CTL_1_2.fastq.gz -ctl_fastq2_1 /DATA/Ctl/CTL_2_1.fastq.gz -ctl_fastq2_2 /DATA/Ctl/CTL_2_1.fastq.gz
     ```

You can mix up not only data types but also endedness.

* Example: 1 SE fastq, 1 PE bam and 1 PE control tagalign

     ```
     $ python chipseq.py -species hg19 -fastq1 /DATA/REP1.fastq.gz -pe2 -bam2 /DATA/REP2.bam -pe_ctl -ctl_tag /DATA/CTL.tagAlign.gz
     ```

## Pipeline steps

AQUAS pipeline goes through the following stages:

* bam          : mapping (fastq -> bam)
* filt_bam     : filtering and deduping bam (bam -> filt_bam)
* tag          : creating tagalign (filt_bam -> tagalign)
* xcor         : cross-correlation analysis (tagalign -> xcor plot.pdf/score.txt )
* peak         : peak calling (tagalign -> peak)
* idr          : IDR (peaks -> IDR score and peaks)

AQUAS pipeline stops right after `-final_stage [STAGE]` (`idr` by default). It is useful if you are not interested in peak calling and want to map/align lots of genome data (fastq, bam or filt_bam) IN PARALLEL.

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

## Changing peak caller

There are two peak callers (`spp` and `macs2`) supported by the pipeline. `spp` and `macs2` are by default for TF ChIP-seq and histone ChIP-seq, respectively. But you can specify a peak caller regardless of the [CHIPSEQ_TYPE]. Simply add `-peak_caller [PEAK_CALLER_FOR_IDR]` to the command line.

## Changing dup marker

There are two dup markers (`picard` and `sambamba`) supported by the pipeline. `picard` is by default. `picard` is based on Java so there can be a lot Java-related issues (e.g. Java heap error). To change the dup marker to `sambamba`, simply add `-dup_marker sambamba` to the command line.

## Managing multiple pipelines

Simply add `-screen [SCREEN_NAME]` to create a detached screen for a pipeline and then stdout/stderr will be redirected to a log file `[SCREEN_NAME].log`. If a log file already exists, stdout/stderr will be appended to it. Monitor the pipeline with `tail -f [SCREEN_NAME].log`. A screen will be automatically closed once the pipeline run is done. To kill a pipeline manually while it's running, use `./utils/kill_scr` or `screen -X quit`:

```
$ screen -X -S [SCREEN_NAME] quit
$ kill_scr [SCREEN_NAME]
```

## Java issues (memory and temporary directory)

Picard tools is used for marking dupes in the reads and it's based on Java. If you see any Java heap space errors then increase memory limit for Java with `-mem_dedup [MEM]` (default: `12G`).

If your `/tmp` quickly fills up and you want to change temporary directory for all Java apps in the pipeline, then add the following line to your bash startup script (`$HOME/.bashrc`). Our pipeline takes in `$TMPDIR` (not `$TMP`) for all Java apps.

```
export TMPDIR=/your/temp/dir/
```

Another quick workaround for dealing with Java issues is not to use Picard tools in the pipeline. Add `-use_sambamba_markdup` to your command line and then you can use `sambamba markdup` instead of `picard markdup`.

## How to customize genome data installer?

Please refer to the section `Installer for genome data` on [BDS pipeline programming](https://kundajelab.github.io/bds_pipeline_modules/programming.html).


## Usage cheat sheet

For general use, use the following command line. You can skip first three positional arguments to use default values.
```
$ python chipseq.py [CHIPSEQ_TYPE; TF(default), histone] [FINAL_STAGE: bam, filt_bam, tag, xcor, peak, idr(default)] [CONF_JSON_FILE] -species [SPECIES; hg19, mm9, ... ] -nth [NUM_THREADS] -fastq1 [READ_REP1] -fastq2 [READ_REP2] ...
```
**IMPORTANT!** If your data set is **PAIRED END** add the following to the command line, otherwise the pipeline works for SE by default.
```
-pe
```
You can also individually specify endedness for each replicate.
```
-se[REPLICATE_ID]   # for exp. replicates, 
```
```
-se1 -pe2 -se3 ...
```

If you have just one replicate (PE), define fastqs with `-fastq[REP_ID]_[PAIR_ID]`.
```
-fastq1_1 [READ_PAIR1] -fastq1_2 [READ_PAIR2] \
```
For multiple replicates (PE), define fastqs with `-fastq[REP_ID]_[PAIR_ID]`. Add `-fastq[]_[]` for each replicate and pair to the command line:replicates.
```
-fastq1_1 [READ_REP1_PAIR1] -fastq1_2 [READ_REP1_PAIR2] -fastq2_1 [READ_REP2_PAIR1] -fastq2_2 [READ_REP2_PAIR2] ...
```
For multiple replicates (SE), define fastqs with `-fastq[REP_ID]`:
```
-se -fastq1 [READ_REP1] -fastq2 [READ_REP2] ...
```
You can start from bam files. There are two kinds of bam files (raw or deduped) and you need to explicitly choose between raw bam (bam) and deduped one (filt_bam). Don't forget to add `-pe` if they are paired end (PE). For raw bams,
```
-bam1 [RAW_BAM_REP1] -bam2 [RWA_BAM_REP1] ...
```
For deduped (filtered) bams:
```
-filt_bam1 [FILT_BAM_REP1] -filt_bam2 [FILT_BAM_REP1] ...
```
For tagaligns (non-tn5-shifted):
```
-tag1 [TAGALIGN_REP1] -tag2 [TAGALIGN_REP2] ...
```
You can also mix up any data types.
```
-bam1 [RAW_BAM_REP1] -tag2 [TAGALIGN_REP2] ...
```
For controls, simply add a prefix `ctl_` to the parameters. This rule applies to the endedness of controls too. You can also have multiple sets of controls. For example of 2 PE controls,
```
-ctl_pe -ctl_fastq1_1 [FASTQ_CTL1_PAIR1] -ctl_fastq1_2 [FASTQ_CTL1_PAIR2] -ctl_fastq2_1 [FASTQ_CTL1_PAIR1] -ctl_fastq2_2 [FASTQ_CTL1_PAIR2] ...
```
If your control is raw bam (paired end).
```
-ctl_pe -ctl_bam1 [BAM_CTL1] ...
```
To subsample beds (tagaligns) add the following to the command line. This is different from subsampling for cross-corr. analysis. Peaks will be called with subsampled tagaligns.
```
-subsample_chip [NO_READS_TO_SUBSAMPLE]
```
To subsample control beds (tagaligns) add the following to the command line.
```
-subsample_ctl [NO_READS_TO_SUBSAMPLE]
```
To change # of lines to subsample for cross-corr. analysis. This will not affect tasks downstream (peak calling and IDR).
```
-subsample_xcor [NO_READS_TO_SUBSAMPLE]
```
To disable pseudo replicate generation, add the following. By default, peak calling and IDR will be done for true replicates and pseudo replicates, but if you have `-true_rep` in the command line, you will also get IDR on true replicates only.
```
-true_rep
```
`-true_rep` disables peak calling for pooled replicates as well as self pseudo replicates. If you want to call peaks on true/pooled replicates:
```
-no_pseudo_rep
```
You can change the IDR threshold.
```
-idr_thresh [IDR_THRESHOLD]
```
You can specify a peak caller for IDR regardless of the type of ChIP-seq.
```
-peak_caller [PEAK_CALLER; spp, macs2]
```
To disable cross-corr. analysis.
```
-no_xcor
```
If you turn off cross-corr. analysis (`-no_xcor`) make sure to set both `-extsize_macs2 [EXTSIZE]` and `-speak_spp [SPEAK]`. Those two values are supposed to be taken from cross-corr. analysis.

## Useful HTML reports

There are two kinds of HTML reports provided by the pipeline.

* BigDataScript HTML report for debugging: Located at the working folder with name chipseq_[TIMESTAMP]_report.html. This report is automatically generated by BigDataScript and is useful for debugging since it shows summary, timeline, Stdout and Stderr for each job.

* ChIP-Seq pipeline report for QC and result: The pipeline automatically generate a nice HTML report (Report.html) on its output directory (specified with -out_dir or just './out'). It summarizes files and directory structure, includes QC reports and show a workflow diagram and genome browser tracks for peaks and signals (bigwigs for pValue and fold change). Move your output directory to a web directory (for example, /var/www/somewhere) or make a softlink of it to a web directory. For genome browser tracks, specify your web directory root for your output  While keeping its structure. Make sure that you have bgzip and tabix installed on your system. Add the following to the command line:

      -url_base http://your/url/to/output -title [PREFIX_FOR_YOUR_REPORT]

## Temporary files

If you stop a BDS pipeline with `Ctrl+C` while calling peaks with `spp`. Temporary files generated by `Rscript` are not removed and they are still on `$TMP` (or `/tmp` if not explicitly exported). You need to manually remove them.


# Output directory structure and file naming

For more details, refer to the file table section in an HTML report generated by the pipeline.

```
out                               # root dir. of outputs
│
├ *report.html                    #  HTML report
├ *tracks.json                    #  Tracks datahub (JSON) for WashU browser
├ ENCODE_summary.json             #  Metadata of all datafiles and QC results
│
├ align                           #  mapped alignments
│ ├ rep1                          #   for true replicate 1 
│ │ ├ *.bam                       #    raw bam
│ │ ├ *.nodup.bam                 #    filtered and deduped bam
│ │ ├ *.tagAlign.gz               #    tagAlign (bed6) generated from filtered bam
│ │ ├ *.*M.tagAlign.gz            #    subsampled tagAlign for cross-corr. analysis
│ ├ rep2                          #   for true repilicate 2
│ ...
│ ├ ctl1                          #   for control 1
│ ...
│ ├ pooled_rep                    #   for pooled replicate
│ ├ pseudo_reps                   #   for self pseudo replicates
│ │ ├ rep1                        #    for replicate 1
│ │ │ ├ pr1                       #     for self pseudo replicate 1 of replicate 1
│ │ │ └ pr2                       #     for self pseudo replicate 2 of replicate 1
│ │ ├ rep2                        #    for repilicate 2
│ │ ...                           
│ └ pooled_pseudo_reps            #   for pooled pseudo replicates
│   ├ ppr1                        #    for pooled pseudo replicate 1 (rep1-pr1 + rep2-pr1 + ...)
│   └ ppr2                        #    for pooled pseudo replicate 2 (rep1-pr2 + rep2-pr2 + ...)
│
├ peak                            #  peaks called
│ ├ macs2                         #   peaks generated by MACS2
│ │ ├ rep1                        #    for replicate 1
│ │ │ ├ *.narrowPeak.gz           #     narrowPeak
│ │ │ ├ *.gappedPeak.gz           #     gappedPeak
│ │ │ ├ *.filt.narrowPeak.gz      #     blacklist filtered narrowPeak 
│ │ │ ├ *.filt.gappedPeak.gz      #     blacklist filtered gappedPeak
│ │ ├ rep2                        #    for replicate 2
│ │ ...
│ │ ├ pseudo_reps                 #   for self pseudo replicates
│ │ └ pooled_pseudo_reps          #   for pooled pseudo replicates
│ │
│ ├ spp                           #   peaks generated by SPP
│ │ ├ rep1                        #    for replicate 1
│ │ │ ├ *.regionPeak.gz           #     regionPeak (narrowPeak format) generated from SPP
│ │ │ ├ *.filt.regionPeak.gz      #     blacklist filtered narrowPeak 
│ │ ├ rep2                        #    for replicate 2
│ │ ...
│ │ ├ pseudo_reps                 #   for self pseudo replicates
│ │ └ pooled_pseudo_reps          #   for pooled pseudo replicates
│ │
│ └ idr                           #   IDR thresholded peaks (using peaks from SPP)
│   ├ true_reps                   #    for replicate 1
│   │ ├ *.narrowPeak.gz           #     IDR thresholded narrowPeak
│   │ ├ *.filt.narrowPeak.gz      #     IDR thresholded narrowPeak (blacklist filtered)
│   │ └ *.12-col.bed.gz           #     IDR thresholded narrowPeak track for WashU browser
│   ├ pseudo_reps                 #    for self pseudo replicates
│   │ ├ rep1                      #    for replicate 1
│   │ ...
│   ├ optimal_set                 #    optimal IDR thresholded peaks
│   │ └ *.filt.narrowPeak.gz      #     IDR thresholded narrowPeak (blacklist filtered)
│   ├ conservative_set            #    optimal IDR thresholded peaks
│   │ └ *.filt.narrowPeak.gz      #     IDR thresholded narrowPeak (blacklist filtered)
│   ├ pseudo_reps                 #    for self pseudo replicates
│   └ pooled_pseudo_reps          #    for pooled pseudo replicate
│
├ qc                              #  QC logs
│ ├ *IDR_final.qc                 #   Final IDR QC
│ ├ rep1                          #   for true replicate 1
│ │ ├ *.flagstat.qc               #    Flagstat QC for raw bam
│ │ ├ *.dup.qc                    #    Picard (or sambamba) MarkDuplicate QC log
│ │ ├ *.pbc.qc                    #    PBC QC
│ │ ├ *.nodup.flagstat.qc         #    Flagstat QC for filtered bam
│ │ ├ *M.cc.qc                    #    Cross-correlation analysis score for tagAlign
│ │ └ *M.cc.plot.pdf/png          #    Cross-correlation analysis plot for tagAlign
│ ...
│
├ signal                          #  signal tracks
│ ├ macs2                         #   signal tracks generated by MACS2
│ │ ├ rep1                        #    for true replicate 1 
│ │ │ ├ *.pval.signal.bigwig (E)  #     signal track for p-val
│ │ │ └ *.fc.signal.bigwig   (E)  #     signal track for fold change
│ ...
│ └ pooled_rep                    #   for pooled replicate
│ 
└ report                          # files for HTML report
```

## QC metrics spreadsheet (TSV) generation

For each pipeline rune, `ENCODE_summary.json` file is generated under the output directory (`-out_dir`). This JSON file includes all metadata and QC metrics.

`./utils/parse_summary_qc_recursively.py` recursively finds `ENCODE_summary.json` files and parse them to generate one big TSV spreadsheet for QC metrics.

```
$ python parse_summary_qc_recursively.py -h
usage: ENCODE_summary.json parser for QC [-h] [--out-file OUT_FILE]
                                         [--search-dir SEARCH_DIR]
                                         [--json-file JSON_FILE]

Recursively find ENCODE_summary.json, parse it and make a TSV spreadsheet of
QC metrics.

optional arguments:
  -h, --help            show this help message and exit
  --out-file OUT_FILE   Output TSV filename)
  --search-dir SEARCH_DIR
                        Root directory to search for ENCODE_summary.json
  --json-file JSON_FILE
                        Specify json file name to be parsed
```

# Programming with BDS

* [Using genomic pipeline modules in Kundaje lab](https://kundajelab.github.io/bds_pipeline_modules/programming.html)

* [BigDataScript github repo](https://github.com/pcingola/BigDataScript)

* [BigDataScript documentation](http://pcingola.github.io/BigDataScript/bigDataScript_manual.html)

# Requirements 

* For python2 (python 2.x >= 2.7) and R-3.x, [requirements.txt](https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/requirements.txt)

* For python3, [requirements_py3.txt](https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/requirements_py3.txt)

# Troubleshooting

See more [troubleshootings](https://kundajelab.github.io/bds_pipeline_modules/troubleshooting.html).

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
$ python chipseq.py -no_par ...
```

### [samopen] no @SQ lines in the header. ( bwa sam failure )

For computers with limited memory, bwa samse/sampe fails without non-zero exit value. This leads to a failure of a pipeline or corruption of outputs.

Solution: balance memory usage between parallel jobs or disable parallel jobs (add '-no_par')

```
$ python chipseq.py -no_par ...
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
* Nathan Boley - Postdoc, Dept. of Genetics, Stanford University
* Anshul Kundaje - Assistant Professor, Dept. of Genetics, Stanford University
