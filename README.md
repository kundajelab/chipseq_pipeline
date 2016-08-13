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


### Installation instruction

<a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/INSTALL.md">General</a>

<a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/INSTALL_Kundaje.md">Kundaje lab</a>

<a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/INSTALL_SCG_Sherlock.md">Stanford SCG3/4 and Sherlock clusters</a>


### Usage

We recommend using BASH to run pipelines. There are two ways to define parameters for ChIP-Seq pipelines. Default values are already given for most of them. Take a look at example commands and configuration files (`./examples`). Two methods share the same key names.

1) Parameters from command line arguments: `$ bds chipseq.bds -species [SPECIES] -fastq1 ... -fastq2 ... -ctl_fastq ...`
2) Parameters from a configuration file: `$ bds chipseq.bds [CONF_FILE]` with a configuration file
```
# example conf. file
species= hg19
fastq1= /DATA/ENCFF000YLW.fastq.gz
fastq2= /DATA/ENCFF000YLY.fastq.gz
ctl_fastq1= /DATA/Ctl/ENCFF000YRB.fastq.gz
```

The pipeline automatically determines if each task has finished or not (by comparing timestamps of input/output files for each task). To run the pipeline from the point of failure, correct error first and then just run the pipeline with the same command that you started the pipeline with. There is no additional parameter for restarting the pipeline.
<b>IMPORTANT!</b> On servers with a cluster engine (such as Sun Grid Engine and SLURM), <b>DO NOT QSUB BDS COMMAND</b>. Run BDS command directly on login nodes. BDS is a task manager and it will automatically submit(qsub) and manage its sub tasks.



### Histone ChIP-Seq

Simply add `-histone` or `-type histone` to the command line. Peaks will be called with MACS2 only and those peaks will be used for naive overlap thresholding. No IDR for histone ChIP-Seq.


### Input types

All data are treated as <b>SINGLED-ENDED</b> if endedness is not explicltly specifed. For fastqs, it's automatically determined. For exp. replicates: define data path with `-[DATA_TYPE][REPLICATE_ID]`. For contols: define data path with `-ctl_[DATA_TYPE][CONTROL_ID]`. You can skip `[REPLICATE_ID]` or `[CONTROL_ID]` if it's 1. (eg. `-fastq`, `-ctl_bam`, `-tag`, ... ). Except for fastq, add `-pe` if your data set is PAIRED-END. You can also individually specify endedness for each replicate; `-pe[REPLICATE_ID]` for exp. replicates, `-ctl_pe[CONTROL_ID]` for controls.

1) Starting from fastqs (see the example in the previous chapter)
2) Starting from bams: `$ bds chipseq.bds -species hg19 -pe -bam1 /DATA/REP1.bam -bam2 /DATA/REP2.bam -ctl_bam /DATA/CTL.bam ...`
3) Starting from deduped bams: `$ bds chipseq.bds -species hg19 -se -filt_bam1 /DATA/REP1.filt.bam -filt_bam2 /DATA/REP2.filt.bam -ctl_filt_bam /DATA/CTL.filt.bam ...`
4) Starting from tagaligns: `$ bds chipseq.bds -species mm9 -pe -tag1 /DATA/REP1.tagAlign.gz -tag2 /DATA/REP2.tagAlign.gz -ctl_tag /DATA/CTL.tagAlign.gz`

5) Starting from peak files:
```
$ bds chipseq.bds -species hg19 \
-peak1 /DATA/Example1.regionPeak.gz -peak2 /DATA/Example2.regionPeak.gz \
-peak_pooled /DATA/Example.pooled.regionPeak.gz \
...
```
If you want do perform full IDR including pseudo-replicates and pooled pseudo-replicates, add the following to the command line.
For IDR on pseduro replicates of replicate 1: `-peak1_pr1 [PEAK1_PR1] -peak1_pr2 [PEAK1_PR2]`
For IDR on pseduro replicates of replicate 2: `-peak2_pr1 [PEAK2_PR1] -peak2_pr2 [PEAK2_PR2]`
For IDR on pseduro replicates of replicate N: `-peakN_pr1 [PEAK2_PR1] -peakN_pr2 [PEAK2_PR2]`
For IDR on pooled pseduro replicates: `-peak_ppr1 [PEAK_PPR1] -peak_ppr2 [PEAK_PPR2]`

6) Mixing up different input types: For fastqs, it's automatically determined.
```
$ bds chipseq.bds -species mm9 -se -fastq1 /DATA/REP1.fastq.gz -bam2 /DATA/ENCSR000EGM/REP2.bam -ctl_tag /DATA/CTL.tagAlign.gz
```

### How to define endedness (SE/PE)

Add `-pe` to the command line if all data set are paired-end. You can also individually specify endedness for each replicate.
```
-pe[REPLICATE_ID] 	# for exp. replicates, 
-ctl_pe[CONTROL_ID] 	# for controls.
```

For fastqs, you do not need to add '-pe' since the pipeline will automatically determine it according to indices in input parameters.

For replicates:
Define data path as -fastq[REPLICATE_ID], then it's SE (single ended).
Define data path as -fastq[REPLICATE_ID]_[PAIRING_ID], then it's PE.

For controls:
Define data path as -ctl_fastq[REPLICATE_ID], it's SE.
Define data path as -ctl_fastq[REPLICATE_ID]_[PAIRING_ID], it's PE.

Example: 2 replicates and 1 control replicate (all SE)
```
$ bds chipseq.bds -species hg19 -fastq1 /DATA/REP1.fastq.gz -fastq2 /DATA/REP2.fastq.gz -ctl_fastq1 /DATA/CTL.fastq.gz
```
Example: 2 replicates and 2 control replicates (all PE)
```
$ bds chipseq.bds -species hg19 -fastq1_1 /DATA/REP1_1.fastq.gz -fastq1_2 /DATA/REP1_2.fastq.gz -fastq2_1 /DATA/REP2_1.fastq.gz -fastq2_2 /DATA/REP2_2.fastq.gz \
-ctl_fastq1_1 /DATA/Ctl/CTL_1_1.fastq.gz -ctl_fastq1_2 /DATA/Ctl/CTL_1_2.fastq.gz -ctl_fastq2_1 /DATA/Ctl/CTL_2_1.fastq.gz -ctl_fastq2_2 /DATA/Ctl/CTL_2_1.fastq.gz
```
You can mix up not only data types but also endedness.
Example: 1 SE fastq, 1 PE bam and 1 PE control tagalign
```
$ bds chipseq.bds -species hg19 -fastq1 /DATA/REP1.fastq.gz -pe2 -bam2 /DATA/REP2.bam -pe_ctl -ctl_tag /DATA/CTL.tagAlign.gz
```


### Pipeline steps

The AQUAS transcription factor ChIP-Seq pipeline goes through the following stages:
```
1) bam          : mapping (fastq -> bam)
2) filt_bam     : filtering and deduping bam (bam -> filt_bam)
3) tag          : creating tagalign (filt_bam -> tagalign)
4) xcor         : cross-correlation analysis (tagalign -> xcor plot.pdf/score.txt )
5) peak         : peak calling (tagalign -> peak)
6) idr          : IDR (peaks -> IDR score and peaks)
```
The pipeline stops right after `-final_stage [STAGE]`. It is useful if you are not interested in peak calling and want to map/align lots of genome data (fastq, bam or filt_bam) IN PARALLEL.



### Signal track generation (BETA)

Signal tracks for MACS2 signal p-value and fold enrichment are generated by default. You can also generate signal track using `align2rawsignal`. It converts a tagalign to a signal track bigwig. If you want both bigwig and wig, then add `-make_wig`.
```
$ bds chipseq.bds -species hg19 ... -tag2bw
```


### Parallelization and multi-threading (IMPORTANT!)

For completely serialized jobs, add `-no_par` to the command line. Individual tasks can still go multi-threaded.

<b>IMPORTANT!</b> You can set up a limit for total # threads with `-nth [MAX_TOTAL_NO_THREADS]`. Total # threads used by a pipeline will not exceed this limit.

By default, it's 16 on SCG3/4 and Stanford Sherlock cluster, 8 on Kundaje clusters and 4 for others. The pipeline automatically distributes `[MAX_TOTAL_NO_THREADS]` threads for jobs according to corresponding input file sizes. For example of two fastqs (1GB and 2GB) with `-nth 6`, 2 and 4 threads are allocated for aligning 1GB and 2GB fastqs, respectively. The same policy applies to other multi-threaded tasks like deduping and peak calling.

However, all multi-threaded tasks (like bwa, bowtie2, spp and macs2) still have their own max. memory (`-mem_APPNAME [MEM_APP]`) and walltime (`-wt_APPNAME [WALLTIME_APP]`) settings. Max. memory is <b>NOT PER CPU</b>. On Kundaje cluster (with SGE flag activated `bds -s sge chipseq.bds ...`) or on SCG3/4, the actual shell command submitted by BDS for each task is like the following:
```
qsub -V -pe shm [NTH_ALLOCATED_FOR_APP] -h_vmem=[MEM_APP]/[NTH_ALLOCATED_FOR_APP] -h_rt=[WALLTIME_APP] -s_rt=[WALLTIME_APP] ...
```
This ensures that total memory reserved for a cluster job equals to `[MEM_APP]`. The same policy applies to SLURM.




### How to manage multiple pipeline runs? (using UNIX screen)

`./utils/bds_scr` is a BASH script to create a detached screen for a BDS script and redirect stdout/stderr to a log file `[LOG_FILE_NAME]`. If a log file already exists, stdout/stderr will be appended to it. Monitor a pipeline with `tail -f [LOG_FILE_NAME]`. The only difference between `bds_scr` and `bds` is that you have `[SCR_NAME] [LOG_FILE_NAME]` between `bds` command and its parameters (or a BDS script name).
```
bds_scr [SCR_NAME] [LOG_FILE_NAME] chipseq.bds ...
```
You can skip `[LOG_FILE_NAME]` then a log file `[SCR_NAME].log` will be generated on the working directory.
```
bds_scr [SCR_NAME] chipseq.bds ...
```
You can also add any BDS parameters (like `-dryRun`, `-d` and `-s`). The following example is for running a pipeline on Sun Grid Engine.
```
bds_scr [SCR_NAME] [LOG_FILE_NAME] -s sge chipseq.bds ...
```
Once the pipeline run is done, the screen will be automatically closed. To kill a pipeline manually while it's running:
```
screen -X -S [SCR_NAME] quit
```
Or use `./utils/kill_scr`:
```
kill_scr [SCR_NAME]
```


### Useful HTML reports

There are two kinds of HTML reports provided by the pipeline.

1) BigDataScript HTML report for debugging: Located at the working folder with name chipseq_[TIMESTAMP]_report.html. This report is automatically generated by BigDataScript and is useful for debugging since it shows summary, timeline, Stdout and Stderr for each job.
2) ChIP-Seq pipeline report for QC and result: The pipeline automatically generate a nice HTML report (Report.html) on its output directory (specified with -out_dir or just './out'). It summarizes files and directory structure, includes QC reports and show a workflow diagram and genome browser tracks for peaks and signals (bigwigs for pValue and fold change). Move your output directory to a web directory (for example, /var/www/somewhere) or make a softlink of it to a web directory. For genome browser tracks, specify your web directory root for your output  While keeping its structure. Make sure that you have bgzip and tabix installed on your system. Add the following to the command line:
```
-url_base http://your/url/to/output -title [PREFIX_FOR_YOUR_REPORT_AND_OUTPUT]
```



### List of all parameters for ChIP-Seq pipelines

For advanced users, all command line parameters for the pipeline will be listed if you run bds chipseq.bds without any arguments.
```
$ bds chipseq.bds
```


### Temporary files on `$TMP` or `/tmp`

If you stop a BDS pipeline with `Ctrl+C` while calling peaks with `spp`. Temporary files generated by `Rscript` are not removed and they are still on `$TMP` (or `/tmp` if not explicitly exported). You need to manually remove them.



### How to add more functions to pipeline source code?

<a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_CODE.md" target=_blank>https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_CODE.md</a>



### Requirements 

For python2 (python 2.x >= 2.7) and R-3.x, <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/requirements.txt" target=_blank>here</a>
For python3, <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/requirements_py3.txt" target=_blank>here</a>



### Troubleshooting

See more troubleshootings <a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_PIPELINE.md" target=_blank>here</a>


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
Then, append `-addpath /path/to/your/bwa` to your command line.

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
successful:
0.6.2 0.7.1 0.7.2 0.7.3

failed:
0.7.4 0.7.5 0.7.7 0.7.8 0.7.11 0.7.12
```

2) Cannot allocate memory (bwa fails due to lack of memory)

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


3) [samopen] no @SQ lines in the header. ( bwa sam failure )

For computers with limited memory, bwa samse/sampe fails without non-zero exit value. This leads to a failure of a pipeline or corruption of outputs.

Solution: balance memory usage between parallel jobs or disable parallel jobs (add '-no_par')

```
$ bds chipseq.bds -no_par ...
```


4) Error: could not find environment: aquas_chipseq

Unload any Anaconda Python modules. Remove locally installed Anaconda Python from your `$PATH`


5) SPP error: `In min(npld$y[npld$fdr <= fdr])`

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


<a href="https://github.com/kundajelab/TF_chipseq_pipeline/blob/master/README_PIPELINE.md" target=_blank>More troubleshooting</a>


### Contributors

* Jin wook Lee - PhD Student, Mechanical Engineering Dept., Stanford University
* Anshul Kundaje - Assistant Professor, Dept. of Genetics, Stanford University
