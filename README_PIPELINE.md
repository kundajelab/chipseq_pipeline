BigDataScript (BDS) Pipelines
===============================================



### Installation instruction for java and git

Make sure that you have java (jdk >= 1.7 or jre >= 1.7) and git on your system.

For Debian/Ubuntu based Linux,
```
$ sudo apt-get install git openjdk-7-jre
```

For Fedora/Red-Hat based Linux,
```
$ sudo yum install git java-1.8.0-openjdk
```


### Installation instruction for Miniconda3

Get the latest Miniconda3 installer at <a href="http://conda.pydata.org/miniconda.html" target=_blank>http://conda.pydata.org/miniconda.html</a> and install it. The following command is for Anaconda Python3 on 64bit Linux system.
```
$ wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
$ bash Miniconda3-latest-Linux-x86_64.sh
```

Choose `yes` for the final question. If you choose `no`, you need to manually add Miniconda3 to your `.bashrc`.
```
Do you wish the installer to prepend the Miniconda2 install location
to PATH in your /your/home/.bashrc ? [yes|no]
[no] >>> yes
```

Open a new terminal after installation.



### Installation instruction for BigDataScript

Get BigDataScript v0.9999:
```
$ git clone https://github.com/pcingola/BigDataScript
$ cd BigDataScript
$ git checkout tags/v0.9999
$ cp distro/bds_Linux.tgz $HOME
$ cd $HOME
$ tar zxvf bds_Linux.tgz
```

Add the following lines to your bash initialization script (`$HOME/.bashrc` or `$HOME/.bash_profile`):
```
export PATH=$PATH:$HOME/.bds
```

If java memory occurs, add the following lines to your bash initialization script (`$HOME/.bashrc` or `$HOME/.bash_profile`):
```
export _JAVA_OPTIONS="-Xms256M -Xmx512M -XX:ParallelGCThreads=1"
export MAX_JAVA_MEM="8G"
export MALLOC_ARENA_MAX=4
```


### Installation instruction for BigDataScript pipelines

Install java (jdk >= 1.7 or jre >= 1.7) and the latest git on your system. 

Install Anaconda Python (or Miniconda) on your system. Open a new terminal after installation.

Install BigDataScript v0.9999 on your system.

Find bds.config and move it to `$HOME/.bds/`.
```
$ mkdir -p $HOME/.bds
$ cp bds.config $HOME/.bds/
```


### How to run pipelines?

Create and move to your working directory. Run the following command:
```
$ bds [PIPELINE_BDS] [PARAMETERS]
```

DO NOT CLOSE A TERMINAL WHILE PIPELINE IS RUNNING! All tasks will be canceled and intermediate files will be deleted. Make a screen or make sure that the terminal doesn't close. Do not run multiple BDS pipelines on the same working directory. BDS creates an HTML report and temporary files on the working directory. Debugging will be messed up.



### How to stop pipelines?

Press Ctrl + C on a terminal or just close it. Please note that this will delete all intermediate files and incomplete outputs for the running tasks. Outputs from finished tasks will not be deleted.

You can resume the pipeline by using the same command line you used for starting it. For each stage, BDS automatically check if output files exist or they are newer than input files, and then determine whether stages need to be re-run or not. 



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





### Resource settings (walltime and max. memory)

Most clusters have resource limitation so that jobs submitted without it will be declined. By default, walltime is 11 hours and max memory is 8GB. To change them, add the following parameters to the command line. `-mem` does not apply to jobs with their own max. memory parameters (eg. spp with `-mem_spp`, bwa align with `-mem_bwa_aln`, ...)
```
-wt [WALLTIME; examples: 13:20:20, 10h, 7200] -memory [MAX_MEMORY; examples: 5G, 2000K]
```

You can specify walltime and max. memory for a specific job (with `-mem_[TASK_NAME] [MAX_MEM]`). To see which job has specific resource settings, run the pipeline without parameters `$ bds [PIPELINE_BDS]` then it will display all parameters including resource settings and help. The following line is an example parameter to increase walltime and max. memory for MACS2 peak calling.
```
-wt_macs2 40h -mem_macs2 20G -nth_macs2 2
```

Note that max. memory defined with `-mem_XXX` is PER CPU! `-mem_macs2 20G -nth_macs2 2` in the above example will have max. memory limit of 40G. Also note that without a cluster engine (like Grid Engine) pipeline jobs can possible have no limit for max. memory according to your UNIX system. In such a case, reduce # of cpus with `-nth_TASKNAME`.

If your system (either local or cluster engine) doesn't limit walltime and max. memory for jobs, add the following to the command line. Pipeline jobs will run without resource restriction.
```
-use_sys_default
```



### Resource settings On SCG3

You always need to submit pipeline jobs to Sun Grid Engine. Carefully define resources settings on SCG3. If walltime is over 6 hours on SCG3, jobs will be submitted to a longer queue, which makes you wait long to get jobs executed. By default, walltime is 11 hours. If your job is small enough to be done in 6 hours, then make the walltime shorter than 6h.
```
-wt 5:50:00
```



### Resource settings on Kundaje lab clusters

There is no limit for walltime and max. memory on Kundaje lab clusters.





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
chrsz   = /mnt/data/annotations/by_release/hg19.GRCh37/hg19.chrom.sizes // chrome sizes
seq     = /mnt/data/ENCODE/sequence/encodeHg19Male 			// genome reference sequence
gensz   = hs // genome size: hs for humna, mm for mouse
umap    = /mnt/data/ENCODE/umap/encodeHg19Male/globalmap_k1tok1000 	// uniq. mappability tracks
umap_hic= /mnt/data/ENCODE/umap/encodeHg19Male/globalmap_k20tok54 	// uniq. mappability tracks
bwa_idx = /mnt/data/annotations/indexes/bwa_indexes/encodeHg19Male/v0.7.10/encodeHg19Male_bwa-0.7.10.fa
bwt_idx = /mnt/data/annotations/indexes/bowtie1_indexes/encodeHg19Male/encodeHg19Male
bwt2_idx = /mnt/data/annotations/indexes/bowtie2_indexes/bowtie2/ENCODEHg19_male

tss_enrich = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/hg19_RefSeq_stranded.bed.gz
ref_fa  = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/encodeHg19Male.fa  // genome reference fasta
blacklist = /mnt/lab_data/kundaje/users/dskim89/ataqc/annotations/hg19/Anshul_Hg19UltraHighSignalArtifactRegions.bed.gz
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
chrsz               : Chrome sizes file path (use fetchChromSizes from UCSC tools).
seq                 : Reference genome sequence directory path (where chr*.fa exist).
gensz               : Genome size; hs for human, mm for mouse (default: hs).
umap                : Unique mappability tracks directory path (https://sites.google.com/site/anshulkundaje/projects/mappability).
umap_hic            : Unique mappability tracks directory path (for HiC, DO NOT USE all-mappable umap track starting from 1bp)
bwa_idx             : BWA index (full path prefix of [].bwt file) .
bwt_idx             : Bowtie index (full path prefix of [].1.ebwt file).
bwt2_idx            : Bowtie2 index (full path prefix of [].1.bt2 file).
tss_enrich           : V plot index (full path for bed file).

// for ataqc
ref_fa 		    : Reference genome sequence fasta.
blacklist 	    : Blacklist bed for ataqc.
dnase 		    : DNase bed for ataqc.
prom 		    : Promoter bed for ataqc.
enh 		    : Enhancer bed for ataqc.
reg2map 	    : Reg2map for ataqc.
roadmap_meta 	    : Roadmap metadata for ataqc.
```



### Using species file on SCG3 and Kundaje lab clusters

Add the following to the command line and that's it.
```
-species [SPECIES; hg19, mm9, ...]
```

hg19 and mm9 are available for SCG3 and Kundaje lab clusters. If you are interested in other species, add species to `species/*.conf` and share with lab members or create your own species file.




### Dry run

Dry run (this actually does nothing) to check next stages and input/output file names for it.
```
$ bds -dryRun [PIPELINE_BDS] ...
```




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
mod_lang= r/2.15.1 java/latest
```

2) shcmd

If you have softwares locally installed on your home, you may need to add to them environment variables like `$PATH`, `$LD_LIBRARY_PATH` and so on. <b>IMPORTANT!</b> Note that any pre-defined enviroment variables (like `$PATH`) should be referred in a curly bracket like `${PATH}`. This is because BDS distinguishes environment variables from BDS variables by a curly bracket ${}.
```
shcmd= export PATH=${PATH}:path_to_your_program
```

You can have multiple lines for shcmd since any suffix is allowed. Use ; as a delimiter. 
```
shcmd_R= export PATH=${PATH}:/home/userid/R-2.15.1;
shcmd_lib= export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${HOME}/R-2.15.1/lib
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

If you have a separate virtual environment for R-2.x.x. 
```
conda_env_r2= [CONDA_ENV_NAME_FOR_R2]		# R-2.x.x must be installed in this virt. env.
```


### What are -mod, -shcmd, -addpath, -conda_env and -conda_env_py3?

They are command line argument versions of `mod`, `shcmd` and `addpath`. However NO SUFFIX is allowed. For example,
```
$ bds [PIPELINE_BDS] -mod 'bwa/0.7.3; samtools/1.2' -shcmd 'export PATH=${PATH}:/home/userid/R-2.15.1' -addpath '${HOME}/program1/bin' -conda_env my_env -conda_env_py3 my_env_py3
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
shcmd_any_suffix = export R_PATH=/home/userid/R-2.15.1

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

mod_chipseq = bwa/0.7.7 samtools/0.1.19 bedtools/2.19.1 ucsc_tools/3.0.9 picard-tools/1.92 MACS2/2.1.0 java/latest

addpath_chipseq = /srv/gsfs0/scratch/leepc12/software/idrCode:/srv/gsfs0/scratch/leepc12/software/phantompeakqualtools:/srv/gsfs0/scratch/leepc12/software/idr/bin:/srv/gsfs0/scratch/leepc12/software/align2rawsignal/bin:/srv/gsfs0/scratch/leepc12/software/gem:/srv/gsfs0/scratch/leepc12/software/deepTools/bin:/srv/gsfs0/scratch/leepc12/software/R-2.15.1/bin:/srv/gsfs0/scratch/leepc12/software/python3.4/bin:/srv/gsfs0/scratch/leepc12/software/python2.7/bin

shcmd_chipseq = export GEMROOT=/srv/gsfs0/scratch/leepc12/software/gem; export GEM=/srv/gsfs0/scratch/leepc12/software/gem/gem.jar; export LAPACK=/srv/gsfs0/scratch/leepc12/software/blas/lapack-*/liblapack.a; export _JAVA_OPTIONS='-Xms256M -Xmx512M -XX:ParallelGCThreads=1'; export MAX_JAVA_MEM='8G'; export MALLOC_ARENA_MAX=4; MCRROOT=/srv/gsfs0/scratch/leepc12/software/MATLAB_Compiler_Runtime/v714; LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/runtime/glnxa64; LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/bin/glnxa64; MCRJRE=${MCRROOT}/sys/java/jre/glnxa64/jre/lib/amd64; LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/native_threads; LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/server; LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}; XAPPLRESDIR=${MCRROOT}/X11/app-defaults; export LD_LIBRARY_PATH; export XAPPLRESDIR;

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

Add a parallel environment shm to grid engine configuration.
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

Add shm to your queue and set your shell as bash.
```
$ sudo qconf -mq [YOUR_MAIN_QUEUE]
...
pe_list               make shm
shell                 /bin/bash
...
```


### Troubleshooting

If see the following error when you submit jobs to Sun Grid Enginee,
```
/bin/bash: module: line 1: syntax error: unexpected end of file
```

Check your `$HOME/.bashrc` if it has any errorneous lines.

Remove the following line in you module initialization scripts (`$MODULESHOME/init/bash` or `/etc/profile.d/modules.sh`).
```
export -f module
```




### Contributors

* Jin wook Lee - PhD Student, Mechanical Engineering Dept., Stanford University
* Anshul Kundaje - Assistant Professor, Dept. of Genetics, Stanford University
