BigDataScript (BDS) Pipelines
===============================================


### How to run pipelines?

We recommend using BASH to run pipelines. Create and move to your working directory. Run the following command. DO NOT CLOSE A TERMINAL WHILE PIPELINE IS RUNNING! All tasks will be canceled and intermediate files will be deleted.
```
$ bds [PIPELINE_BDS] [PARAMETERS]
```
It is not recommended to run multiple BDS pipelines on the same working directory. BDS creates an HTML report and temporary files on the working directory. Debugging them will be very hard.



### How to stop pipelines?

Press Ctrl + C on a terminal or just close it. Please note that this will delete all intermediate files and incomplete outputs for the running tasks. Outputs from finished tasks will not be deleted. You can resume the pipeline by using the same command line you used for starting it. For each stage, BDS automatically check if output files exist or they are newer than input files, and then determine whether stages need to be re-run or not. 


### How to efficiently manage multiple pipeline runs? (using UNIX screen)

`bds_scr` is a BASH script to create a detached screen for a BDS script and redirect stdout/stderr to a log file `[LOG_FILE_NAME]`. If a log file already exists, stdout/stderr will be appended to it. Monitor a pipeline with `tail -f [LOG_FILE_NAME]`.

The only difference between `bds_scr` and `bds` is that you have `[SCR_NAME] [LOG_FILE_NAME]` between `bds` command and its parameters (or a BDS script name).
```
bds_scr [SCR_NAME] [LOG_FILE_NAME] [PIPELINE.BDS] ...
```
You can skip `[LOG_FILE_NAME]` then a log file `[SCR_NAME].log` will be generated on the working directory.
```
bds_scr [SCR_NAME] [PIPELINE.BDS] ...
```
You can also add any BDS parameters (like `-dryRun`, `-d` and `-s`). The following example is for running a pipeline on Sun Grid Engine.
```
bds_scr [SCR_NAME] [LOG_FILE_NAME] -s sge [PIPELINE.BDS] ...
```
Once the pipeline run is done, the screen will be automatically closed. To kill a pipeline manually while it's running:
```
screen -X -S [SCR_NAME] quit
```


### Running pipelines with a cluster engine

You can run BDS pipeline with a specified cluster engine. Choose your cluster system (`local`: UNIX threads, `sge`: Sun Grid Engine, ...).
```
$ bds -s [SYSTEM] [PIPELINE.BDS] ...
```
Modify `$HOME./.bds/bds.config` to change your default system. The following example is to use Sun Grid Engine (sge) as your default system. Then you no longer need to add `-s sge` to the command line.
```
#system = local
system = sge
```
You need additional modification on bds.config to correctly configure your cluster engine. Read more on <a href="http://pcingola.github.io/BigDataScript/bigDataScript_manual.html" target="_blank">http://pcingola.github.io/BigDataScript/bigDataScript_manual.html</a>. For Kundaje lab clusters and SCG3, it's already set up for Sun Grid Engine.



### How to display all parameters and help

Run pipelines without parameters.
```
$ bds [PIPELINE_BDS]
```


### Parallelization and multi-threading (IMPORTANT!)

For completely serialized jobs:
```
-no_par
```
You can set up a limit for total # threads. Total # threads used by a pipeline will not exceed this limit.
```
-nth [MAX_TOTAL_NO_THREADS; 8 by default]
```
A pipeline automatically distributes `[MAX_TOTAL_NO_THREADS]` threads for jobs according to corresponding input file sizes. For example of two fastqs (1GB and 2GB) with `-nth 6`, 2 and 4 threads are allocated for aligning 1GB and 2GB fastqs, respectively. The same policy applies to other multi-threaded tasks like deduping and peak calling.

However, all multi-threaded tasks (like bwa, bowtie2, spp and macs2) still have their own max. memory (`-mem_APPNAME [MEM_APP]`) and walltime (`-wt_APPNAME [WALLTIME_APP]`) settings. Max. memory is <b>NOT PER CPU</b>. On Kundaje cluster (with SGE flag activated `bds -s sge chipseq.bds ...`) or on SCG3/4, the actual shell command submitted by BDS for each task is like the following:
```
qsub -pe shm [NTH_ALLOCATED_FOR_APP] -h_vmem=[MEM_APP]/[NTH_ALLOCATED_FOR_APP] -h_rt=[WALLTIME_APP] ...
```
This ensures that total memory reserved for a cluster job equals to `[MEM_APP]`.



### Resource settings (walltime and max. memory)

Most clusters have resource limitation so that jobs submitted without it will be declined. By default, walltime is 23 hours and max memory is 12GB. To change them, add the following parameters to the command line. `-mem` does not apply to jobs with their own max. memory parameters (eg. spp with `-mem_spp`, bwa align with `-mem_bwa_aln`, ...)
```
-wt [WALLTIME; examples: 13:20:20, 10h, 7200] -memory [MAX_MEMORY; examples: 5G, 2000K]
```
You can specify walltime and max. memory for a specific job (with `-mem_[APP_NAME] [MAX_MEM]`). To see which job has specific resource settings, run the pipeline without parameters `$ bds [PIPELINE_BDS]` then it will display all parameters including resource settings and help. The following line is an example parameter to increase walltime and max. memory for MACS2 peak calling.
```
-wt_macs2 40h -mem_macs2 12G
```
Note that max. memory defined with `-mem_XXX` is NOT PER CPU! If your system (either local or cluster engine) doesn't limit walltime and max. memory for jobs, add the following to the command line. Pipeline jobs will run without resource restriction.
```
-unlimited_mem_wt
```



### How to deal with BDS pipeline errors?

1) Take a look at HTML report (which contains all STDERR/STDOUT for all jobs in the pipeline; ).  It tells you everything about all pipeline jobs. Find which stage is errorneous. Carefully look at system messages (STDERR and STDOUT) for it. BDS HTML report is located at the working folder with name `[PIPELINE_NAME]_[TIMESTAMP]_report.html`. This report is automatically generated by BDS.

2) Correct errors.
   2-1) Lack of memory: increase memory for all jobs (e.g. add `-mem 20G`) or a specific problematic job (e.g. add `-mem_macs2 20G`).
   2-2) Timeout: increase walltime for all jobs (e.g. add `-wt 24h`) or a specific long job (e.g. add `-wt_macs2 200h`).
                 (Warning! Most clusters have limit for walltime. Make it as shortest as you can to get your queued jobs executed quickly.)
   2-3) Wrong input: check all input files are available.
   2-4) Software error: use recommended software versions.

3) Resume pipeline with the same command line that you used for starting it. Previous successful stages will be automatically skipped.



### Debugging BDS pipelines

```
# make BDS verbose
$ bds -v chipseq.bds ...

# display debugging information
$ bds -d chipseq.bds ...

# test run (this actually does nothing) to check input/output file names and commands
$ bds -dryRun chipseq.bds ...
```



### How to define parameters?

There are two ways to define parameters for pipelines. Default values are already given for most of parameters. Take a look at example commands and configuration files (`./examples`). Both methods share the same key names.

1) From command line arguments 
```
$ bds [PIPELINE_BDS] [PARAMETERS]
```
Example for chipseq pipeline:
```
$ bds chipseq.bds \
-fastq1 /DATA/ENCFF000YLW.fastq.gz \
-fastq2 /DATA/ENCFF000YLY.fastq.gz \
-ctl_fastq1 /DATA/Ctl/ENCFF000YRB.fastq.gz \
-bwa_idx /INDEX/encodeHg19Male_bwa-0.7.3.fa
...
```

2) From a configuration file
```
$ bds [PIPELINE_BDS] [CONF_FILE]
```
Example configuriation file for chipseq pipeline:
```
$ cat [CONF_FILE]

fastq1= /DATA/ENCFF000YLW.fastq.gz
fastq2= /DATA/ENCFF000YLY.fastq.gz
ctl_fastq1= /DATA/Ctl/ENCFF000YRB.fastq.gz
bwa_idx= /INDEX/encodeHg19Male_bwa-0.7.3.fa
...
```

You can override any parameters defined in a configuration file by adding them to the command line.
```
$ bds [PIPELINE_BDS] [CONF_FILE] [PARAMS_TO_BE_OVERRIDEN]
```


### Using species file

There are many species specific parameters like indices (bwa, bowtie, ...), chromosome sizes and sequence files (chr*.fa). If you have multiple pipelines, it's inconvenient to individually define all parameters in a command line argument for each pipeline run. However, if you have a species file with all species specific parameters defined, then you define less parameters in the command line and share the species file with all other pipelines.

Add the following to the command line to specify species and species file.
```
-species [SPECIES; hg19, mm9, ...] -species_file [SPECIES_FILE]
```
You can override any parameters defined in the species file by adding them to command line argument or configuration file. For example, if you want to override parameters for BWA index and umap:
```
-species hg19 -species_file my_species.conf -bwa_idx [YOUR_OWN_BWA_IDX] -chrsz [YOUR_OWN_CHR_SIZES_FILE]
```
Example species file looks like the following. You can define your own species.
```
[hg19]
chrsz   = /mnt/data/annotations/by_release/hg19.GRCh37/hg19.chrom.sizes // chromosome sizes
seq     = /mnt/data/ENCODE/sequence/encodeHg19Male 			// genome reference sequence
gensz   = hs // genome size: hs for humna, mm for mouse
umap    = /mnt/data/ENCODE/umap/encodeHg19Male/globalmap_k1tok1000 	// uniq. mappability tracks
umap_hic= /mnt/data/ENCODE/umap/encodeHg19Male/globalmap_k20tok54 	// uniq. mappability tracks
bwa_idx = /mnt/data/annotations/indexes/bwa_indexes/encodeHg19Male/v0.7.10/encodeHg19Male_bwa-0.7.10.fa
bwt_idx = /mnt/data/annotations/indexes/bowtie1_indexes/encodeHg19Male/encodeHg19Male
bwt2_idx = /mnt/data/annotations/indexes/bowtie2_indexes/bowtie2/ENCODEHg19_male
blacklist = /mnt/data/ENCODE/blacklists/wgEncodeDacMapabilityConsensusExcludable.bed.gz

tss_enrich = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/hg19_RefSeq_stranded.bed.gz
ref_fa  = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/encodeHg19Male.fa  // genome reference fasta
dnase = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/reg2map_honeybadger2_dnase_all_p10_ucsc.bed.gz
prom = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/reg2map_honeybadger2_dnase_prom_p2.bed.gz
enh = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/reg2map_honeybadger2_dnase_enh_p2.bed.gz
reg2map = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/dnase_avgs_reg2map_p10_merged_named.pvals.gz
roadmap_meta = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/eid_to_mnemonic.txt

# your own definition for species
[hg19_custom]
chrsz   = ...
seq     = ...
...

[mm9]
...

[mm10]
...
```

Description for parameters in a species file.
```
chrsz               : Chromosome sizes file path (use fetchChromSizes from UCSC tools).
seq                 : Reference genome sequence directory path (where chr*.fa exist).
gensz               : Genome size; hs for human, mm for mouse (default: hs).
umap                : Unique mappability tracks directory path (https://sites.google.com/site/anshulkundaje/projects/mappability).
umap_hic            : Unique mappability tracks directory path (for HiC, DO NOT USE all-mappable umap track starting from 1bp)
bwa_idx             : BWA index (full path prefix of [].bwt file) .
bwt_idx             : Bowtie index (full path prefix of [].1.ebwt file).
bwt2_idx            : Bowtie2 index (full path prefix of [].1.bt2 file).

// for ataqc
tss_enrich          : TSS enrichment bed.
ref_fa 		    : Reference genome sequence fasta.
blacklist 	    : Blacklist bed for ataqc.
dnase 		    : DNase bed for ataqc.
prom 		    : Promoter bed for ataqc.
enh 		    : Enhancer bed for ataqc.
reg2map 	    : Reg2map for ataqc.
roadmap_meta 	    : Roadmap metadata for ataqc.
```
Blacklist is available <a href="https://sites.google.com/site/anshulkundaje/projects/blacklists">here</a>


### How to share a species file on your server
```
$ bds [PIPELINE_BDS] -species [SPECIES; hg19, mm9, ...] -species_file [SPECIES_FILE]
```
If you want to skip `-species_file` parameter, define it in the default environment file `./conf/default.env`.
```
[your_hostname] # get it with 'hostname -f'

conda_env     = [CONDA_ENV_NAME; bds_atac for atac, aquas_chipseq for chipseq]
conda_env_py3 = [CONDA_ENV_PY3_NAME; bds_atac_py3 for atac, aquas_chipseq_py3 for chipseq]

species_file = [SPECIES_FILE]
```


### Dry run

Dry run (this actually does nothing) to check next stages and input/output file names for it.
```
$ bds -dryRun [PIPELINE_BDS] ...
```


### Temporary files on `$TMP` or `/tmp`

If you stop a BDS pipeline with `Ctrl+C` while calling peaks with `spp`. Temporary files generated by `Rscript` are not removed and they are still on `$TMP` (or `/tmp` if not explicitly exported). You need to manually remove them.



### How to set up shell environments

Ignore this section if you are working on SCG3 or Kundaje lab clusters.

It is important to define enviroment variables (like `$PATH`) to make bioinformatics softwares in the pipeline work properly. mod, shcmd and addpath are three convenient ways to define environment variables. Environment variables defined with mod, shcmd and addpath are preloaded for all tasks on the pipeline. For example, if you define environment variables for bwa/0.7.3 with mod. bwa of version 0.7.3 will be used throughout the whole pipeline (including bwa aln, bwa same and bwa sampe).

1) mod

There are different versions of bioinformatics softwares (eg. samtools, bedtools and bwa) and <a href="http://modules.sourceforge.net/">Enviroment Modules</a> is the best way to manage environemt variables for them. For example, if you want to add environment variables for bwa 0.7.3 by using Environment Modules. You can simply type `$ module add bwa/0.7.3;`. The equivalent setting in the pipeline configuration file should look like:
```
mod= bwa/0.7.3;
```

You can have multiple lines for mod since any suffix is allowed. Use ` ` as a delimiter.
```
mod_bio= bwa/0.7.3 bedtools/2.x.x samtools/1.2
mod_lang= r/3.2.2 java/latest
```

2) shcmd

If you have softwares locally installed on your home, you may need to add to them environment variables like `$PATH`, `$LD_LIBRARY_PATH` and so on. <b>IMPORTANT!</b> Note that any pre-defined enviroment variables (like `$PATH`) should be referred in a curly bracket like `${PATH}`. This is because BDS distinguishes environment variables from BDS variables by a curly bracket ${}.
```
shcmd= export PATH=${PATH}:path_to_your_program
```

You can have multiple lines for shcmd since any suffix is allowed. Use ; as a delimiter. 
```
shcmd_R= export PATH=${PATH}:/home/userid/R-3.2.2;
shcmd_lib= export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${HOME}/R-3.2.2/lib
```

shcmd is not just for adding environemt variables. It can execute any bash shell commands prior to any jobs on the pipeline. For example, to give all jobs peaceful 10 seconds before running.
```
shcmd_SLEEP_TEN_SECS_FOR_ALL_JOBS= echo "I am sleeping..."; sleep 10
```

3) addpath

If you just want to add something to your `$PATH`, use addpath instead of shcmd. It's much simpler. Use : or ; as a delimiter.
```
addpath= ${HOME}/program1/bin:${HOME}/program1/bin:${HOME}/program2/bin:/usr/bin/test
```

4) conda_env and conda_env_py3

You can also use Anaconda virtual environment in the pipeline. BDS pipelines usually take two conda environments since there is a conflict between softwares based on python3 and python2. Make sure that the environment corresponding to `conda_env` has python2 installed and that corresponding to `conda_env_py3` has python3 installed.
```
conda_env= [CONDA_ENV_NAME]		# python2 must be installed in this virt. env.
conda_env_py3= [CONDA_ENV_NAME_FOR_PY3] 	# python3 must be installed in this virt. env.
```



### What are -mod, -shcmd, -addpath, -conda_env and -conda_env_py3?

They are command line argument versions of `mod`, `shcmd` and `addpath`. However NO SUFFIX is allowed. For example,
```
$ bds [PIPELINE_BDS] -mod 'bwa/0.7.3; samtools/1.2' -shcmd 'export PATH=${PATH}:/home/userid/R-3.2.2' -addpath '${HOME}/program1/bin' -conda_env my_env -conda_env_py3 my_env_py3
```



### Using Environment file

You can have mod, shcmd and addpath in your configuration file or `-mod` `-shcmd` and `-addpath` in your command line arguments, but it will be more convenient to have a separate file to define your own shell environments and cluster resources. You can also define any parameters (like bwa index, # thread for tasks, fastqs and so on) in the environment file.
```
$ bds [PIPELINE_BDS] ... -env [ENV_FILE]
```

Shell environment settings can be set up per HOSTNAME (`$ hostname -f`). This means that you can have multiple environment configruation for all clusters in one environment file. Single or multiple hostnames are written in a square bracket ([SECTION_NAME]). You can also use an alias for hostnames. Example sturcture is like the following:
```
[hostname1]
... parameters ...

[hostname2]
... parameters ...

[hostname3, hostname4]
... parameters ...


[hostname5 : alias1]
[hostname6, hostname7: alias2]

[alias1]
... parameters ...

[alias2]
... parameters ...
```

Example environment file is like the following:
```
[carmack.stanford.edu] 	# your hostname
mod_any_suffix = bwa/0.7.3 samtools/1.2
addpath_any_suffix = ${HOME}/program1/bin
shcmd_any_suffix = export R_PATH=/home/userid/R-3.2.2

species_file = /path/to/your/species.conf

nth_spp = 4 	// On this cluster for spp, I want to use 4 CPUs, 4G for each CPU and 10 hours of walltime.
mem_spp = 4G
wt_spp  = 10:00:00

nth_macs2 = 2 	// You can also have resource settings for other tasks

conda_env = my_conda_env_py2
conda_env_py3 = my_conda_env_py3
...
```

Note that any pre-defined enviroment variables (like `$PATH`) should be referred in a curly bracket like `${PATH}`. This is because BDS distinguishes environment variables from BDS variables by a curly bracket `${}`.

Example environment file on scg3 (Stanford cluster).
```
[scg3-ln01.stanford.edu, scg3-ln01.stanford.edu, carmack.stanford.edu, crick.stanford.edu : scg3] 	# four hostnames for SCG3
[scg3] 	# alias

conda_env     = bds_atac
conda_env_py3 = bds_atac_py3

species_file = $script_dir/species/scg3.conf
```


### Parameter overriding

Parameters can be defined in 1) environment file, 2) configuation file and 3) command line arguments. They will be overriden in the order of 1) < 2) < 3).



### How to setup Sun Grid Engine for BigDataScript

Add the following to grid engine configuration.
```
$ sudo qconf -mconf
...
execd_params                 ENABLE_ADDGRP_KILL=true
...
```

Add a parallel environment `shm` to grid engine configuration. If you already have your own parallel environment, skip this.
```
$ sudo qconf -ap

pe_name            shm
slots              999
user_lists         NONE
xuser_lists        NONE
start_proc_args    /bin/true
stop_proc_args     /bin/true
allocation_rule    $pe_slots
control_slaves     FALSE
job_is_first_task  FALSE
urgency_slots      min
accounting_summary FALSE
```

Add your parallel environment (`shm` by default) to your queue and set your shell as bash.
```
$ sudo qconf -mq [YOUR_MAIN_QUEUE]
...
pe_list               make [YOUR_PE_NAME]
shell                 /bin/bash
...
```

Correctly configure `./bds.config` and copy it to `$HOME/.bds/`:
```
sge.pe = [YOUR_PE_NAME] # shm by default
sge.mem = [MAX_MEMORY_TYPE] # h_vmem by default
sge.timeout = [WALLTIME_TYPE] # h_rt by default
```

More information is at <a href="http://pcingola.github.io/BigDataScript/bigDataScript_manual.html">http://pcingola.github.io/BigDataScript/bigDataScript_manual.html</a>



### BASH completion for a UNIX screen

For automatic BASH completion for screens (http://www.commandlinefu.com/commands/view/12160/bash-auto-complete-your-screen-sessions), add the following to your `$HOME/.bashrc`:
```
complete -C "perl -e '@w=split(/ /,\$ENV{COMP_LINE},-1);\$w=pop(@w);for(qx(screen -ls)){print qq/\$1\n/ if (/^\s*\$w/&&/(\d+\.\w+)/||/\d+\.(\$w\w*)/)}'" screen
```



### Troubleshooting

1) /bin/bash: module: line 1: syntax error: unexpected end of file

If see the following error when you submit jobs to Sun Grid Enginee,
```
/bin/bash: module: line 1: syntax error: unexpected end of file
```

Check if your $HOME/.bashrc has any errorneous lines.

Remove the following line in you module initialization scripts ($MODULESHOME/init/bash or /etc/profile.d/modules.sh).
```
export -f module
```

2) Unable to run job: unknown resource "'mem"

Replace `$HOME/.bds/bds.config` with the one in the repo.
```
$ cp /path/to/repo/bds.config $HOME/.bds/
```

3) Unable to access jarfile /picard.jar

Define a shell variable `PICARDROOT` for your environment. Add the following to your `~/.bashrc` or conda `activate`:
```
export PICARDROOT=/path/to/your/picard-tool
```

4) awk: cmd. line:1: fatal: division by zero attempted

This error happens when 1) picard tool's MarkDuplicate is running out of memory, 2) fastq inputs have wrong endedness (SE or PE) or 3) input raw bam is incorrect.
For 1) balance memory usage among parallel tasks, add `-no_par` or reduce max. # threads (`-nth [SMALL_NUMBER]`).
For 2) check your fastq inputs are correct (`-fastqN_1`, `-fastqN_2`, ...) and also check their endedness (SE or PE) parameters like (`-se` or `-pe`).
For 3) check if there is an error in aligning stage (in an HTML report).


5) Unsupported major.minor version (java)

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


6) [main_samview] random alignment retrieval only works for indexed BAM or CRAM files.

If your pipeline starts from BAM files, make sure that bam index (.bam.bai) exists together with BAM file. If not, build index with `samtools index [YOUR_BAM_FILE]`. BAM and BAI should be in the same directory.


7) Fatal error: /home/leepc12/bds_atac/modules/report_*.bds

Simply re-run the pipeline with the same command. Possible bug in BDS for locking/unlocking global variables.


8) ImportError: libopenblasp-r0-39a31c03.2.18.so: cannot open shared object file: No such file or directory

Dependencies are not installed correctly. Check your Anaconda Python is correctly configured for conda environments. Run `./uninstall_dependencies.sh` and then `./install_dependencies.sh` again.



### Contributors

* Jin wook Lee - PhD Student, Mechanical Engineering Dept., Stanford University
* Anshul Kundaje - Assistant Professor, Dept. of Genetics, Stanford University
