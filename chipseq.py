#!/usr/bin/env python

'''
code written by Jin Lee (leepc12@gmail.com) in Anshul Kundaje lab at Stanford
April, 2017
'''
import argparse
from argparse import RawTextHelpFormatter
import os
import sys
import json
import re
from subprocess import check_output
from collections import OrderedDict
from collections import defaultdict

def get_script_path():
    return os.path.dirname( os.path.abspath(sys.argv[0]) )

def get_bds_script_name():
    return 'chipseq.bds'

def get_default_param_dict(): # this is not ordered
    '''
    * This dict provides mapping from BDS params to Python argparse params.
    * Each BDS param is a child dict with the following keys:
        _order_ : to order items in collections.OrderedDict
        _default_ : default value
        _choices_ : choices
        _help_ : help text
    * The hierachy is used to group parameters.
        _group_desc_ : for groups only
    '''
    return {
        "screen"        : { "_order_" : -13, "_default_" : "", "_help_" : "Create a screen with name [SCREEN].BDS and attach BDS pipeline to it. STDOUT/STDERR will be redirected to [SCREEN].log on the working directory." },
        "type"          : { "_order_" : -12, "_default_" : "TF", "_choices_" : ["TF","histone"], "_help_" : "Type of ChIP-Seq pipeline." },
        "final_stage"   : { "_order_" : -11, "_default_" : "idr", "_choices_" : ["bam", "filt_bam", "tag", "xcor", "peak", "idr"], "_help_" : "Final stage for pipeline." },
        "out_dir"       : { "_order_" : -10, "_default_" : "out", "_help_" : "Output directory." },
        "title"         : { "_order_" : -9,  "_default_" : "", "_help_" : "Prefix for HTML report and outputs without given prefix." },
        "dry_run"       : { "_order_" : -8,  "_default_" : False, "_help_" : "Dry-run." },

        "input_endedness" : { "_order_" : -7, "_group_desc_" : "Set endedness for all input files if all of them have the same endedness. \
                                                You can also specify endedness per IP replicate or control: \
                                                -se[REPLICATE_ID], -ctl_se[CONTROL_ID], -pe[REPLICATE_ID] and -ctl_pe[CONTROL_ID].",
            "se" : { "_order_" : 0, "_default_" : False, "_help_" : "Set endedness of all inputs as single-ended." },
            "pe" : { "_order_" : 1, "_default_" : False, "_help_" : "Set endedness of all inputs as paired-end." },
        },

        "input_files" : { "_order_" : -6, "_group_desc_" : "Input file paths for each replicate or control. There are five types of input: \
                                                fastq, bam, filtered bam (filt_bam), tagalign (tag) and narrow/relaxed peak (peak). \
                                                You can also mix up different types for multiple replicates."
        },

        "input_files_(fastq)" : { "_order_" : -5, "_group_desc_" : "Single-ended : For IP replicate '-fastq[REPLICATE_ID]', For control '-ctl_fastq[CONTROL_ID]', \
                                                Paired end : For IP replicate '-fastq[REPLICATE_ID]_[PAIR_ID]', For control '-ctl_fastq[CONTROL_ID]_[PAIR_ID]'. \
                                                To merge fastqs from multiple technical replicates, Single-ended : For IP replicate '-fastq[REPLICATE_ID]:[TECH_REP_ID]', For control '-ctl_fastq[CONTROL_ID]:[TECH_REP_ID]', \
                                                Paired end : For IP replicate '-fastq[REPLICATE_ID]_[PAIR_ID]:[TECH_REP_ID]', For control '-ctl_fastq[CONTROL_ID]_[PAIR_ID]:[TECH_REP_ID]'.",
        },

        "input_files_(bam, filt_bam)" : { "_order_" : -4, "_group_desc_" : "Raw bam : For IP replicate '-bam[REPLICATE_ID]', For control '-ctl_bam[CONTROL_ID]'.\
                                                Filtered bam : For IP replicate '-filt_bam[REPLICATE_ID]', For control '-ctl_filt_bam[CONTROL_ID]'."
        },

        "input_files_(tagalign)" : { "_order_" : -3, "_group_desc_" : "For IP replicate '-tag[REPLICATE_ID]', For control '-ctl_tag[CONTROL_ID]'"
        },

        "input_files_(peak)" : { "_order_" : -2, "_group_desc_" : "For true replicates, use '-peak1' and '-peak2',\
                                                For pooled replicates, use '-peak_pooled',\
                                                For two PR (self-pseudo-replicates), use '-peak[REPLICATE_ID]_pr1' and '-peak[REPLICATE_ID]_pr2'\
                                                For two PPR (pooled pseudo-replicates), use '-peak_ppr1' and '-peak_ppr2'"
        },

        "species" : { "_order_" : -1, "_group_desc_" : "Species-specific parameters or data files. If you have installed genome data of supported species with 'install_genome_data.sh'. \
                                                '-species' alone works fine. Otherwise, all parameters below must be specified except '-species_file'. You can also use '-species_file' to specify an INI file\
                                                that has all required parameters defined. See './species/kundaje.conf' for an example.",

            "species"     : { "_order_" : 0, "_default_" : "", "_help_" : "Species." },
            "species_file"    : { "_order_" : 1, "_default_" : "", "_help_" : "Species file path." },
            "species_browser" : { "_order_" : 2, "_default_" : "", "_help_" : "Species name in WashU genome browser." },
            "ref_fa"      : { "_order_" : 3, "_default_" : "", "_help_" : "Reference genome sequence fasta." },
            "chrsz"       : { "_order_" : 4, "_default_" : "", "_help_" : "Chromosome sizes file path (use fetchChromSizes from UCSC tools)." },
            "blacklist"   : { "_order_" : 5, "_default_" : "", "_help_" : "Blacklist bed." },
            "gensz"       : { "_order_" : 6, "_default_" : "", "_help_" : "Genome size; hs for human, mm for mouse. Or sum of numbers in the 2nd column in chr. sizes file." },
            "seq_dir"     : { "_order_" : 7, "_default_" : "", "_help_" : "Reference genome sequence directory path (where chr*.fa or chr*.fasta exist)." },
        },

        "cluster" : { "_order_" : 0, "_group_desc_" : "Cluster and system settings. SLURM and Sun Grid Engine are supported cluster engines.",
            "system"      : { "_order_" : 0, "_default_" : "local", "_choices_": ["slurm","sge","local"], "_help_" : "Force to use a system." },
            "nice"        : { "_order_" : 1, "_default_" : 0, "_help_" : "Set process priority for all tasks; -20 (highest) ~ 19 (lowest)." },
            "retrial"     : { "_order_" : 2, "_default_" : 0, "_help_" : "Number of retrial for failed tasks." },
            "q"           : { "_order_" : 3, "_default_" : "", "_help_" : "Submit tasks to a specified cluster queue." },
            "cluster_task_min_len": { "_order_" : 4, "_default_" : 60, "_help_" : "Minimum length for a cluster job in seconds (dealing with NFS delayed write)." },
            "cluster_task_delay"  : { "_order_" : 5, "_default_" : 0, "_help_" : "Constant delay for every job in seconds (dealing with NFS delayed write)." },
        },

        "resource" : { "_order_" : 1, "_group_desc_" : "System resource and parallelization settings. '-nth' is the most important parameter to parallelize a pipeline. You can specify \
                                                        resource limit for the cluster engine for each task. '-wt' and '-memory' are for all other jobs not \
                                                        specified here ",
            "nth"         : { "_order_" : 0, "_default_" : 4, "_help_" : "Maximum number of threads for a pipeline." },
            "no_par"      : { "_order_" : 1, "_default_" : False, "_help_" : "Serialize all tasks (individual tasks can still use multiple threads up to '-nth')." },
            "wt"          : { "_order_" : 2, "_default_" : "5h50m", "_help_" : "Walltime for all single-threaded tasks (example: 8:10:00, 3h, 3600)." },
            "memory"      : { "_order_" : 3, "_default_" : "7G", "_help_" : "Maximum memory for all single-threaded tasks (equivalent to '-mem', example: 4.5G, 1024M)." },
            "unlimited_mem_wt": { "_order_" : 4, "_default_" : False, "_help_" : "Use unlimited max. memory and walltime."},
            "wt_dedup"    : { "_order_" : 5, "_default_" : "23h", "_help_" : "Walltime for post-alignment filtering." },
            "mem_dedup"   : { "_order_" : 6, "_default_" : "12G", "_help_" : "Max. memory for post-alignment filtering." },
            "mem_shuf"    : { "_order_" : 7, "_default_" : "12G", "_help_" : "Max. memory for UNIX shuf." },
            "wt_bwa"      : { "_order_" : 8, "_default_" : "47h", "_help_" : "Walltime for bwa." },
            "mem_bwa"     : { "_order_" : 9, "_default_" : "12G", "_help_" : "Max. memory for bwa." },
            "wt_macs2"    : { "_order_" : 10, "_default_" : "23h", "_help_" : "Walltime for MACS2." },
            "mem_macs2"   : { "_order_" : 11, "_default_" : "15G", "_help_" : "Max. memory for MACS2." },
            "wt_spp"      : { "_order_" : 12, "_default_" : "47h", "_help_" : "Walltime for spp." },
            "mem_spp"     : { "_order_" : 13, "_default_" : "12G", "_help_" : "Max. memory for spp." },
            "mem_xcor"     : { "_order_" : 14, "_default_" : "15G", "_help_" : "Max. memory for cross-corr. analysis." },
            # "wt_gem"      : { "_order_" : 15, "_default_" : "47h", "_help_" : "Walltime for GEM." },
            # "mem_gem"     : { "_order_" : 16, "_default_" : "12G", "_help_" : "Max. memory for GEM." },
            #"wt_peakseq"  : { "_order_" : 17, "_default_" : "47h", "_help_" : "Walltime for PeakSeq." },
            #"mem_peakseq" : { "_order_" : 18, "_default_" : "12G", "_help_" : "Max. memory for PeakSeq." },
        },

        "alignment" : { "_order_" : 2, "_group_desc_" : "Read mapping and alignment settings. Currently bwa is the only available aligner.",
            "pe_xcor_only"  : { "_order_" : -4, "_default_" : False, "_help_" : "Align R1 of paired end fastqs only and for cross-correlation analysis. All other analyses and QCs will be disabled." },
            "pe_no_trim_fastq"  : { "_order_" : -3, "_default_" : False, "_help_" : "No fastq trimming and use PE tagAlign for cross-correlation analysis." },
            "aligner"       : { "_order_" : -2, "_default_" : "bwa", "_help_" : "Aligner to map raw reads in FASTQs." },
            "multimapping"  : { "_order_" : -1, "_default_" : 0, "_help_" : "Number of alignments reported for multimapping." },
            "trim_bp"       : { "_order_" : 0, "_default_" : 50, "_help_" : "Number of basepairs after trimming fastqs." },
            "alignment_bwa" : { "_order_" : 1, "_group_desc_" : "",
                "param_bwa_aln"   : { "_order_" : 0, "_default_" : "-q 5 -l 32 -k 2", "_help_" : "Parameters for bwa aln" },
                "bwa_idx"         : { "_order_" : 1, "_default_" : "", "_help_" : "BWA index (full path prefix of *.bwt file)" },
            },
            "alignment_filter" : { "_order_" : 2, "_group_desc_" : "",
                "dup_marker"      : { "_order_" : 0, "_default_" : "picard", "_choices_":["picard", "sambamba"], "_help_" : "Dup marker for filtering mapped reads in BAMs." },
                "anon_filt_bam"   : { "_order_" : 1, "_default_" : False, "_help_" : "Generate an annomymized filtered BAM. This will not affect tasks downsteam." },
                "mapq_thresh"     : { "_order_" : 2, "_default_" : 30, "_help_" : "Threshold for low MAPQ reads removal." },
                "rm_chr_from_tag" : { "_order_" : 3, "_default_" : "", "_help_" : "Perl style reg-ex to exclude reads from tag-aligns. (example: 'other|ribo|mito|_')." },
                "no_dup_removal"  : { "_order_" : 4, "_default_" : False, "_help_" : "No dupe removal when filtering raw BAM." },
            },
            "alignment_subsample" : { "_order_" : 3, "_group_desc_" : "",
                "subsample_chip"  : { "_order_" : 0, "_default_" : "0", "_help_" : "Number of reads to subsample IP replicate. Subsampled tagalign will be used for analysis (peak and idr) downstream (0: no subsampling)." },
                "subsample_ctl"   : { "_order_" : 1, "_default_" : "0", "_help_" : "Number of reads to subsample control if non-zero (recommended: 40M or lower)." },
            },
            "no_jsd"  : { "_order_" : 4, "_default_" : False, "_help_" : "Disable JSD plot generation." },
        },

        "cross_corr_analysis" : { "_order_" : 3, "_group_desc_" : "Cross-correlation analysis.",
            "no_xcor"           : { "_order_" : 0, "_default_" : False, "_help_" : "Disable cross-correlation analaysis." },
            "subsample_xcor"    : { "_order_" : 1, "_default_" : "15M", "_help_" : "Number of reads to be subsampled for cross corr. analysis only." },
            "speak_xcor"        : { "_order_" : 2, "_default_" : -1, "_help_" : "Set user-defined cross-corr. peak strandshift (-speak= in run_spp.R). Use -1 to disable." },
            "extra_param_xcor"  : { "_order_" : 3, "_default_" : "", "_help_" : "Set extra parameters for run_spp.R" },
        },

        "callpeak" : { "_order_" : 4, "_group_desc_" : "Peak-calling settings. spp and macs2 are stable for calling peaks and IDR analysis on called peaks. peakseq and gem are currently in BETA test.",
            "peak_caller"     : { "_order_" : 0, "_default_" : "spp", "_choices_" : ["spp","macs2"], "_help_" : "Peak caller for IDR analysis. spp for TF ChIP-seq and macs2 for Histone ChIP-seq )." },
            "ctl_depth_ratio" : { "_order_" : 1, "_default_" : 1.2, "_help_" : "Cut-off ratio of two control tagaligns for pooling."  },
            "use_pooled_ctl"  : { "_order_" : 2, "_default_" : False, "_help_" : "Force to use pooled control (ignoring criteria to choose control for each IP replicate)." },
            "true_rep"        : { "_order_" : 3, "_default_" : False, "_help_" : "Call peaks on true replicates only." },
            "no_pseudo_rep"   : { "_order_" : 4, "_default_" : False, "_help_" : "Do not call peaks on self pseudo replicates." },
            "callpeak_spp" : { "_order_" : 5, "_group_desc_" : "",
                "cap_num_peak_spp"         : { "_order_" : 0, "_default_" : 300000, "_help_" : "Cap number of peaks (-npeak= in run_spp.R)."  },
                "max_ppsize_spp"    : { "_order_" : 1, "_default_" : "", "_help_" : "R stack size (R parameter --max-ppsize=; between 5000 and 5000000) for SPP."  },
                "speak_spp"         : { "_order_" : 2, "_default_" : -1, "_help_" : "User-defined cross-corr. peak strandshift (-speak= in run_spp.R). Use -1 to get from upstream cross-corr. analysis."  },
                "extra_param_spp"   : { "_order_" : 3, "_default_" : "", "_help_" : "Extra parameters for run_spp.R"  },
            },
            "callpeak_macs2" : { "_order_" : 6, "_group_desc_" : "",
                "pval_thresh_macs2" : { "_order_" : 0, "_default_" : 0.01, "_help_" : "--pvalue for macs2 callpeak (https://github.com/taoliu/MACS#-p--pvalue)."  },
                "keep_dup_macs2"    : { "_order_" : 1, "_default_" : "all", "_help_" : "--keep-dup for macs2 callpeak (https://github.com/taoliu/MACS#--keep-dup)."  },
                "extsize_macs2"     : { "_order_" : 2, "_default_" : -1, "_help_" : "--extsize for macs2 callpeak (https://github.com/taoliu/MACS#--extsize). Use -1 to get from upstream cross-corr. analysis."  },
                "shift_macs2"       : { "_order_" : 3, "_default_" : 0, "_help_" : "--shift for macs2 callpeak (https://github.com/taoliu/MACS#--shift)."  },
                "cap_num_peak_macs2": { "_order_" : 4, "_default_" : 500000, "_help_" : "Cap number of peaks by taking top N peaks for macs2." },
                "extra_param_macs2" : { "_order_" : 5, "_default_" : "", "_help_" : "Extra parameters for macs2 callpeak."  },
            },
            # "callpeak_gem" : { "_order_" : 7, "_group_desc_" : "",
            #     "npeak_gem"     : { "_order_" : 0, "_default_" : 300000, "_help_" : "Threshold on # of peaks for GEM."  },
            #     "k_min_gem"     : { "_order_" : 1, "_default_" : 6, "_help_" : "Minimum length of k-mers (--k_min in GEM)."  },
            #     "k_max_gem"        : { "_order_" : 2, "_default_" : 13, "_help_" : "Maximum length of k-mers (--k_max in GEM)."  },
            #     "q_val_thresh_gem" : { "_order_" : 3, "_default_" : 0.0, "_help_" : "Q-value threshold (--q in GEM)."  },
            #     "read_dist_gem"    : { "_order_" : 4, "_default_" : "$script_dir/etc/Read_Distribution_default.txt", "_help_" : "Read distribution txt file for GEM."  },
            #     "extra_param_gem"  : { "_order_" : 5, "_default_" : "", "_help_" : "Extra parameters for GEM."  },
            # },
            # "callpeak_peakseq" : { "_order_" : 8, "_group_desc_" : "",
            #     "target_fdr_peakseq"            : { "_order_" : 0, "_default_" : 0.05, "_help_" : "Target FDR for PeakSeq."  },
            #     "n_sim_peakseq"                 : { "_order_" : 1, "_default_" : 10, "_help_" : "Number of simulations for PeakSeq."  },
            #     "enrich_mapped_fraglen_peakseq" : { "_order_" : 2, "_default_" : -1, "_help_" : "Enrichment mapped fragment length for PeakSeq. Use -1 to get from upstream cross-corr. analysis."  },
            #     "min_interpeak_dist_peakseq"    : { "_order_" : 3, "_default_" : -1, "_help_" : "Minimum interpeak distance for PeakSeq. Use -1 to get from upstream cross-corr. analysis."  },
            #     "mappability_map_peakseq"   : { "_order_" : 4, "_default_" : "", "_help_" : "Mappability map file for PeakSeq  (http://archive.gersteinlab.org/proj/PeakSeq/Mappability_Map)."  },
            #     "max_qval_peakseq"          : { "_order_" : 5, "_default_" : 0.1, "_help_" : "Maximum Q-value for PeakSeq."  },
            #     "bckgrnd_model_peakseq"     : { "_order_" : 6, "_default_" : "Simulated", "_help_" : "Background model for PeakSeq."  },
            #     "extra_param_peakseq"       : { "_order_" : 7, "_default_" : "", "_help_" : "Extra parameters for PeakSeq."  },
            # },
            "callpeak_idr" : { "_order_" : 9, "_group_desc_" : "",
                "idr_suffix"  : { "_order_" : 0, "_default_" : False, "_help_" : "Append IDR threshold to IDR output directory." },
                "idr_rank"    : { "_order_" : 1, "_default_" : "", "_help_" : "Scoring column in narrow peak files for IDR. If not specified, signal.value for SPP peaks (TF) and p.value for MACS2 peaks (histone) are used." },
                "idr_thresh"  : { "_order_" : 2, "_default_" : 0.05, "_help_" : "IDR threshold : -log_10(score)." },
            },
            "callpeak_naive_overlap" : { "_order_" : 10, "_group_desc_" : "",
                "nonamecheck"   : { "_order_" : 0, "_default_" : False, "_help_" : "bedtools intersect -nonamecheck (bedtools>=2.24.0, use this if you get bedtools intersect naming convenction warnings/errors)." },
                "no_gpeak_filt" : { "_order_" : 1, "_default_" : False, "_help_" : "Disable gapped peak filtering through narrow peak (for histone ChIP-Seq only)." },
            },
        },

        "signal_track" : { "_order_" : 5, "_group_desc_" : "Signal track generation settings",
            "sig_trk_for_pooled_rep_only" : { "_order_" : 0, "_default_" : False, "_help_" : "Generate MACS2 signal tracks for pooled replicate only." },
        },

        "bds_configuration" : { "_order_" : 6, "_group_desc_" : "Environment settings for BDS pipeline. Note that '-env' works with INI file (not JSON).",
            # "c"       : { "_order_" : 0, "_default_" : "" , "_help_" : "Configuration INI file path." },
            "env"     : { "_order_" : 1, "_default_" : "$script_dir/default.env", "_help_" : "Environment INI file path." },
        },

        "visualization" : { "_order_" : 7, "_group_desc_" : "Visualiation by WashU genome browser. Note that the browser does not support a relative URL for \
                                        data files. A browser session JSON file must have absolute URLs when it's generated. Therefore, the pipeline needs to have \
                                        equivalent URL for the output directory ('-out_dir').",
            "url_base" :        { "_order_" : 0, "_default_" : "", "_help_" : "Equivalent URL address for your output directory (-out_dir)." },
            "viz_genome_coord" :{ "_order_" : 1, "_default_" : "", "_help_" : "WashU genome browser genome coordinate (e.g. chr7:27117661-27153380)." },
            "no_browser_tracks" :{ "_order_" : 2, "_default_" : False, "_help_" : "Disable generation of genome browser tracks (workaround for bzip2 shared library issue)." }
        },

        "ENCODE_accession" : { "_order_" : 8, "_group_desc_" : "Parameters needed to generate input spreadsheets for ENCODE accession.",
            "ENCODE_accession"      : { "_order_" : 0, "_default_" : "", "_help_" : "ENCODE experiment accession ID (or dataset)." },
            "ENCODE_award_rfa"      : { "_order_" : 1, "_default_" : "", "_help_" : "ENCODE award RFA (e.g. ENCODE3)." },
            "ENCODE_assay_category" : { "_order_" : 2, "_default_" : "", "_help_" : "ENCODE assay category." },
            "ENCODE_assay_title"    : { "_order_" : 3, "_default_" : "", "_help_" : "ENCODE assay title." },
            "ENCODE_award"          : { "_order_" : 4, "_default_" : "", "_help_" : "ENCODE award (e.g. /awards/U41HG007000/)." },
            "ENCODE_lab"            : { "_order_" : 5, "_default_" : "", "_help_" : "Lab (e.g. /labs/anshul-kundaje/)" },
            "ENCODE_assembly"       : { "_order_" : 6, "_default_" : "", "_help_" : "hg19, GRCh38, mm9, mm10." },
            "ENCODE_alias_prefix"   : { "_order_" : 7, "_default_" : "KLAB_PIPELINE", "_help_" : "Alias = Alias_prefix + filename" },
        },

        "shell_environment" : { "_order_" : 9, "_group_desc_" : "Shell environment for pipeline. If you have installed dependencies using 'install_dependencies.sh', \
                                                                 You don't need to modify this section. You can also set up your own conda environment and use it for the pipeline or \
                                                                 use environment modules and include locally installed softwares to $PATH.",
            "conda" : { "_order_" : 0,
                "conda_env"       : { "_order_" : 0, "_default_" : "", "_help_" : "Conda environment name for all softwares including Python2 (for all others)." },
                "conda_env_py3"   : { "_order_" : 1, "_default_" : "", "_help_" : "Conda environment name for Python3 (for idr only)."  },
                "conda_bin_dir"   : { "_order_" : 2, "_default_" : "", "_help_" : "Conda bin directory. Useful when you have multiple Conda's in your $PATH and want to specify one." },
            },
            "modules" : { "_order_" : 1,
                "mod"         : { "_order_" : 0, "_default_" : "", "_help_" : "Modules separated by ; (example: 'bowtie/2.2.4; bwa/0.7.7; picard-tools/1.92')." },
                "shcmd"       : { "_order_" : 1, "_default_" : "", "_help_" : "Shell commands separated by ;. Shell var. must be written as ${VAR} not as $VAR (example: 'export PATH=${PATH}:/usr/test; VAR=test')."  },
                "addpath"     : { "_order_" : 2, "_default_" : "", "_help_" : "Path separated by ; or : to be PREPENDED to $PATH (example: '/bin/test:${HOME}/utils')." },
            },
        },
    }

def order_dict( d ): # order dict by key '_order_'
    od = OrderedDict()
    def recur_dict( d, od ):
        sorted_d = sorted(d, key=lambda x: d[x]['_order_'] if type(d[x])==dict and '_order_' in d[x] else -1 )
        for key in sorted_d:
            if type(d[key])==dict and '_order_' in d[key]:
                od[key] = OrderedDict()
                recur_dict(d[key],od[key])
            elif key in ['_order_']:
                continue
            else:
                od[key] = d[key]
    recur_dict( d, od )
    return od

def recur_dict_to_add_arguments( parser, d, dict_name='', parent_name='root', root_parser = None ):    
    if not root_parser: root_parser = parser
    # print d, dict_name
    if not '_help_' in d:
        for key in d:
            if key in ['_order_','_group_desc_']: continue
            if type(d[key]) in [dict,OrderedDict] and '_group_desc_' in d[key]:
                # print d
                p = root_parser.add_argument_group(title=key.replace('_',' '),description=d[key]['_group_desc_'])
            else:
                p = parser
            recur_dict_to_add_arguments( p, d[key], key, parent_name+'.'+key, root_parser )
    else:
        add_argument( parser, d, dict_name )

def add_argument( parser, d, dict_name ):
    name = dict_name.replace('_','-')
    if type(d['_default_']) == bool:
        parser.add_argument('--{}'.format(name),'-{}'.format(dict_name),
            help=d['_help_'],default=str(d['_default_']),action="store_true")
    elif '_choices_' in d:
        parser.add_argument('--{}'.format(name),'-{}'.format(dict_name),
            help=d['_help_'],default=str(d['_default_']),choices=d['_choices_'])
    else:
        parser.add_argument('--{}'.format(name),'-{}'.format(dict_name),
            help=d['_help_'],default=str(d['_default_']))

def recur_dict_to_print_example( d, dict_name='', depth=0 ):
    if not '_help_' in d:
        title='"{}" : '.format(dict_name) if dict_name else ''
        print('\t'*depth+title+'{')
        for key in d:
            if key.startswith('_') and key.endswith('_'): continue
            recur_dict_to_print_example( d[key], key, depth+1 )
        print('\t'*depth+'},')
    else:
        val = d['_default_']
        val = val if not type(val) == str else '"{}"'.format(val)
        print('\t'*depth+'"{}" : {},'.format(dict_name, val ))

def recur_dict_to_print_help( d, dict_name='', depth=0 ):
    if not '_help_' in d:
        title='"{}" : '.format(dict_name) if dict_name else ''
        print('\t'*depth+title+'{')
        for key in d:
            if key.startswith('_') and key.endswith('_'): continue
            recur_dict_to_print_help( d[key], key, depth+1 )
        print('\t'*depth+'},')
    else:
        val = d['_help_']
        val = val if not type(val) == str else '"{}"'.format(val)
        print('\t'*depth+'"{}" : {},'.format(dict_name, val ))

def recur_dict_to_get_defaults( d, dict_name='' ):
    result = dict()
    if not '_help_' in d:
        for key in d:
            if key in ['_order_','_group_desc_']: continue
            result.update( recur_dict_to_get_defaults( d[key], key ) )
    else:
        result[dict_name] = d['_default_']
    return result

def recur_json_to_get_deepest( d, dict_name='' ):
    result = dict()
    result_input_files = dict()
    if type(d)==dict:
        for key in d:
            r1, r2 = recur_json_to_get_deepest( d[key], key )
            result.update( r1 )
            result_input_files.update( r2 )
    else:
        if dict_name in result or dict_name in result_input_files:
            raise ValueError('Duplicate keys in JSON!')        
        file_type, rep, pair = parse_input_files_key(dict_name)
        if file_type:
            result_input_files[dict_name] = d
        else:
            result[dict_name] = d
    return result, result_input_files

def is_in_cmd_line_args( key ):
    for arg in sys.argv:
        # print key, arg
        if arg.startswith('--') and arg==('--'+key.replace('_','-')):
            return True
        elif arg.startswith('-') and arg==('-'+key.replace('-','_')):
            return True
    return False

def parse_input_files_key( key ):    
    file_type = ''
    rep = 0
    pair = 0
    m_endedness = re.findall(r'^\-*(ctl[\-_]se|se|ctl[\-_]pe|pe)(\d+)$',key)
    m_fastq_pe = re.findall(r'^\-*(ctl[\-_]fastq|fastq)(\d*)[\-_](\d+):*(\d*)$',key)
    m_fastq_se = re.findall(r'^\-*(ctl[\-_]fastq|fastq)(\d*):*(\d*)$',key)
    m_peak_pr = re.findall(r'^\-*peak(\d*)[\-_]pr(\d+)$',key)
    m_peak = re.findall(r'^\-*peak(\d*|[\-_]pooled|[\-_]ppr\d+)$',key)
    m_others = re.findall(r'^\-*(ctl[\-_]bam|bam|ctl[\-_]filt[\-_]bam|filt[\-_]bam|ctl[\-_]tag|tag)(\d*)$',key)
    if len(m_endedness):
        file_type = m_endedness[0][0]
        rep = m_endedness[0][1] if m_endedness[0][1] else 1
        pair = 0
    elif len(m_fastq_pe):
        file_type = m_fastq_pe[0][0]
        rep = m_fastq_pe[0][1] if m_fastq_pe[0][1] else 1
        pair = m_fastq_pe[0][2]
    elif len(m_fastq_se):
        file_type = m_fastq_se[0][0]
        rep = m_fastq_se[0][1] if m_fastq_se[0][1] else 1
        pair = 0
    elif len(m_others):
        file_type = m_others[0][0]
        rep = m_others[0][1] if m_others[0][1] else 1
        pair = 0
    elif len(m_peak_pr):
        file_type = 'peak'
        rep = m_peak_pr[0][0] if m_peak_pr[0][0] else 1
        pair = m_peak_pr[0][1]
    elif len(m_peak):
        file_type = 'peak'
        rep = m_peak[0] if m_peak[0] else 1
        rep = rep.replace('-','_')
        pair = 0
    file_type=file_type.replace('-','_')
    return file_type,rep,pair

def parse_input_files_in_cmd_line( args_input_files ):
    bds_cmd = OrderedDict()
    file_type = ''
    rep = 0
    pair = 0
    input_files = defaultdict(list)
    for a in args_input_files:
        if a.startswith('-'):
            file_type,rep,pair = parse_input_files_key(a)            
            if file_type in ['se','ctl_se','pe','ctl_pe']:
                bds_cmd['{}{}'.format(file_type,rep)] = 'True'
                file_type = ''
                rep = 0
                pair = 0
        else:
            if not file_type:
                raise ValueError('Invalid command line arguments ({})!'.format(a))
            if not os.path.exists(a):
                raise ValueError('File not found! (file_type: {}, path:{})'.format(file_type, a))
            elif file_type in ['fastq','ctl_fastq']:
                input_files[(file_type,rep,pair)].append(a)
                pool_idx = len(input_files[(file_type,rep,pair)])               
                if pair:
                    bds_cmd['{}{}_{}:{}'.format(file_type,rep,pair,pool_idx)]=(a,file_type,rep,pair,pool_idx)
                else:
                    bds_cmd['{}{}:{}'.format(file_type,rep,pool_idx)]=(a,file_type,rep,pair,pool_idx)
            elif file_type in ['peak']:
                input_files[(file_type,rep,pair)].append(a)
                if pair:
                    bds_cmd['{}{}_pr{}'.format(file_type,rep,pair)]=(a,file_type,rep,pair,0)
                else:
                    bds_cmd['{}{}'.format(file_type,rep)]=(a,file_type,rep,pair,0)        
            else:
                input_files[(file_type,rep,pair)].append(a)
                bds_cmd['{}{}'.format(file_type,rep)]=(a,file_type,rep,pair,0)            
    return bds_cmd

def parse_input_files_in_json( json_d ):
    bds_cmd = OrderedDict()
    file_type = ''
    rep = 0
    pair = 0
    input_files = defaultdict(list)
    for key in json_d:
        file_type,rep,pair = parse_input_files_key(key)
        arr = json_d[key]
        if not type(arr)==list:
            arr = [arr]
        for val in arr:
            if file_type in ['se','ctl_se','pe','ctl_pe']:                
                bds_cmd['{}{}'.format(file_type,rep)] = 'True'                
            else:
                if not os.path.exists(val):
                    raise ValueError('File not found! (key: {}, path:{})'.format(key,val))
                if file_type in ['fastq','ctl_fastq']:
                    input_files[(file_type,rep,pair)].append(val)
                    pool_idx = len(input_files[(file_type,rep,pair)])               
                    if pair:
                        bds_cmd['{}{}_{}:{}'.format(file_type,rep,pair,pool_idx)]=(val,file_type,rep,pair,pool_idx)
                    else:
                        bds_cmd['{}{}:{}'.format(file_type,rep,pool_idx)]=(val,file_type,rep,pair,pool_idx)
                elif file_type in ['peak']:
                    input_files[(file_type,rep,pair)].append(val)
                    if pair:
                        bds_cmd['{}{}_pr{}'.format(file_type,rep,pair)]=(val,file_type,rep,pair,0)
                    else:
                        bds_cmd['{}{}'.format(file_type,rep)]=(val,file_type,rep,pair,0)
                else:
                    input_files[(file_type,rep,pair)].append(val)
                    bds_cmd['{}{}'.format(file_type,rep)]=(val,file_type,rep,pair,0)
    return bds_cmd

def validate_pipeline_params( pipeline_params ):
    # per_rep = defaultdict(list)
    # type_per_rep = {}
    # all_vals = []
    # for key in pipeline_params:
    #     if type(pipeline_params[key])==tuple: # if param is for input_files
    #         print key, pipeline_params[key]
    #         val,file_type,rep,pair,pool_idx=pipeline_params[key]
    #         if val in all_vals:
    #             raise ValueError('Duplicate file path in JSON or command line arguments (key: {}, val: {})!'.format(\
    #                 key,val))
    #         all_vals.append(val)
    #         per_rep[rep].append(key)
    #         type_per_rep
    # if '_pooled' in per_rep:
    #     return        
    # min_rep = min(per_rep)
    # if min_rep != 1
    #     raise ValueError('Replicate number does not start from 1!')
    # max_rep = max(per_rep)
    # print per_rep
    return

def run_bds( args_dict, dry_run, screen ):    
    bds_script = os.path.join( get_script_path(), get_bds_script_name() )
    bds_conf = os.path.join( get_script_path(), 'bds.config' )
    param = ''
    for key in args_dict:
        val = args_dict[key]
        if type(val)==tuple:
            val=val[0]
        if val == 'True':
            param += "-{} ".format(key)
        elif val == 'False':
            pass
        else:
            param += "-{} {} ".format(key, val)
    if dry_run == 'True': dry_run_param = '-dryRun'
    else: dry_run_param = ''
    if screen:
        log_file_path = '{}/{}.log'.format(os.getcwd(),screen)
        screen_dot_bds = screen + '.BDS'
        # check if screen already exists or log file handle is taken by another process
        screen_already_exists = \
            int(check_output('screen -ls | grep -P "[\t ]\d+.{}" | wc -l'.format(screen_dot_bds), shell=True))
        if screen_already_exists:
            raise Exception('Screen already exists! (screen: {})'.format(screen))
        log_file_handle_is_open = \
            int(check_output('find {} -mmin -1 2>/dev/null | wc -l'.format(log_file_path), shell=True))
        if log_file_handle_is_open:
            raise Exception('Log file handle is already open or too fresh! duplicate runs on the same sample? (file: {})'.format(log_file_path))
        cmd = 'screen -Sdm "{}" bash -c "bds -c {} -v {} &>>{} {} {} $>>{}"'.format(\
            screen_dot_bds, bds_conf, dry_run_param, log_file_path,bds_script,param,log_file_path)
        # write basic info to log file
        os.system( 'echo "[DATE] : $(date)" >> {}'.format( log_file_path ) )
        os.system( 'echo "[HOST] : $(hostname -f)" >> {}'.format( log_file_path ) )
        os.system( 'echo "[SCR_NAME] : {}" >> {}'.format( screen, log_file_path ) )
        os.system( 'echo "[BDS_PARAM] : {}" >> {}'.format( param, log_file_path ) )
        print('* Created a detached screen [{}] for the pipeline. STDOUT/STDERR will be redirected to the log file [{}]'.format(\
            screen, log_file_path))
    else:
        cmd = 'bds -c {} -v {} {} {}'.format(bds_conf, dry_run_param, bds_script,param)
    print(cmd)
    os.system(cmd)

# preprocess positional arguments for 'type', 'final_stage' and json file
# then remove them from sys.argv so that it doesn't affect argparse
def preprocess_argv():
    default_param_dict = get_default_param_dict()
    # preprocess arguments to get conf file name and 
    new_argv = []
    new_argv.append(sys.argv[0])
    chipseq_type = ''
    final_stage = ''
    json_file = ''
    for i in range(1,len(sys.argv)):
        arg = sys.argv[i]
        if arg.startswith('-'):
            new_argv.extend(sys.argv[i:])
            break
        if arg in default_param_dict['type']['_choices_']:
            chipseq_type = arg
        elif arg in default_param_dict['final_stage']['_choices_']:
            final_stage = arg
        elif os.path.exists(arg):
            json_file = arg
        else:
            raise ValueError('Invalid command line arguments ({})!'.format(arg))
    sys.argv = new_argv
    return chipseq_type, final_stage, json_file

def init_parser():
    parser = argparse.ArgumentParser()#formatter_class=RawTextHelpFormatter)
    default_param_dict = get_default_param_dict()
    ordered_dict = order_dict( default_param_dict )
    recur_dict_to_add_arguments( parser, ordered_dict )
    return parser, ordered_dict

def main():
    # preprocess argv first
    chipseq_type, final_stage, json_file = preprocess_argv()    
    # parse args using argparse
    # known args are defined in default_param_dict var.
    # all args for input files will go to args_input_files
    # input files defined in json will be parsed later
    parser, d = init_parser()
    # # print example JSON
    # recur_dict_to_print_example( d )
    # # print help table
    # recur_dict_to_print_help( d )

    args, args_input_files = parser.parse_known_args()
    default_d = recur_dict_to_get_defaults( d )
    json_d = None
    json_input_files_d = None
    in_cmd_line_args = []
    # if json file exists, read it
    if os.path.exists(json_file):
        with open(json_file,mode='r') as fp:
            # input files defined in json are parsed here
            # they go to json_input_files_d
            # all other params go to json_d
            json_d, json_input_files_d = recur_json_to_get_deepest( json.load(fp) )
            for k in json_d: # check if json_d has invalid key
                if not k in default_d: raise ValueError('invalid key {} in JSON!'.format(k) )
    if json_d:
        for key in json_d:
            if not key in args:
                raise ValueError('invalid keyname {} in JSON file'.format(key))
    pipeline_params = OrderedDict()
    args_dict = vars(args)
    for key in args_dict:
        val_in_cmd_arg = str(args_dict[key])
        if key in in_cmd_line_args or is_in_cmd_line_args(key):
            pipeline_params[key] = val_in_cmd_arg
        else:            
            val_default = str(default_d[key])
            if json_d and key in json_d:
                val = str(json_d[key])
                if val != val_default:
                    # if key is screen do not add to bds cmd line.
                    if key=='screen':
                        args.screen = val
                        continue
                    elif key=='dry_run' and val=='True':
                        args.dry_run = True
                    pipeline_params[key] = val
            else:
                if val_in_cmd_arg != val_default:
                    pipeline_params[key] = val_in_cmd_arg
    # if type and final_stage are defined in position cmd line arguments, apply them to bds cmd
    if chipseq_type:
        pipeline_params['type'] = chipseq_type
    if final_stage:
        pipeline_params['final_stage'] = final_stage
    # parse input files
    if json_input_files_d:
        pipeline_params.update( parse_input_files_in_json( json_input_files_d ) )
    if args_input_files:
        if not args_input_files[0].startswith('-'):
            raise ValueError('Invalid command line arguments (key: {})!'.format(args_input_files[0]))
        pipeline_params.update( parse_input_files_in_cmd_line( args_input_files ) )
    validate_pipeline_params( pipeline_params )    
    if not len(pipeline_params):
        # parser.print_help()
        print('Warning: no parameter specied for the pipeline! For help, add -h to the command line.')
        sys.exit(1)
    # run bds command
    # print(args, args.screen)
    run_bds( pipeline_params, str(args.dry_run), args.screen )
if __name__ == '__main__':
    main()
