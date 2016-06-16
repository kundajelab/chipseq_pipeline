#!/usr/bin/env python2

import os
import sys
import operator


def get_files_by_file_size(dirname, reverse=False):
    """ Return list of file paths in directory sorted by file size """

    # Get list of files
    filepaths = []
    for basename in os.listdir(dirname):
        filename = os.path.join(dirname, basename)
        if os.path.isfile(filename):
            filepaths.append(filename)

    # Re-populate list with filename, size tuples
    for i in xrange(len(filepaths)):
        filepaths[i] = (filepaths[i], os.path.getsize(filepaths[i]))

    # Sort list by file size
    # If reverse=True sort from largest to smallest
    # If reverse=False sort from smallest to largest
    filepaths.sort(key=lambda filename: filename[1], reverse=reverse)

    # Re-populate list with just filenames
    for i in xrange(len(filepaths)):
        filepaths[i] = filepaths[i][0]

    return filepaths

fsize = dict()
mp = dict()

order=["ATF7", "FOS", "ATF2", "CREB1", "E2F1", "EGR1", "TCF12", "TCF7L2", "NANOG", "FOXA2", "HNF4A", "FOXA1", "TAF1", "GABPA", "CEBPB", "REST", "MAX", "CTCF", "MYC", "SPI1", "JUND", "MAFK", "GATA3", "FOSL2", "YY1", "ZNF143", "E2F6", "RFX5", "SIX5", "ATF3", "RCOR1", "TBP", "SRF", "TEAD4", "EP300", "STAT3", "ARID3A"]

lst = get_files_by_file_size(os.getcwd(), True)
#lst.sort()

blacklist_ctl = [] #["GM12878","SK-N-SH","K562","HeLa-S3","GM20000","GM13977","HL-60","pancreas"]

#ctl_to_subsample = ["CONTROL.K562.unpaired.fastq.gz", "CONTROL.GM12878.unpaired.fastq.gz", "CONTROL.HepG2.unpaired.fastq.gz", "CONTROL.SK-N-SH.unpaired.fastq.gz", "CONTROL.HeLa-S3.unpaired.fastq.gz", "CONTROL.H1-hESC.unpaired.fastq.gz", "CONTROL.MCF-7.unpaired.fastq.gz", "CONTROL.A549.unpaired.fastq.gz", "CONTROL.liver.BSID_ENCBS401URL.unpaired.fastq.gz", "CONTROL.Panc1.unpaired.fastq.gz", "CONTROL.HCT116.unpaired.fastq.gz", "CONTROL.liver.BSID_ENCBS046RNA.unpaired.fastq.gz", "CONTROL.PC-3.unpaired.fastq.gz", "CONTROL.B_cell.unpaired.fastq.gz", "CONTROL.fibroblast_of_lung.unpaired.fastq.gz", "CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz"]
ctl_to_subsample = ["CONTROL.K562.unpaired.fastq.gz", "CONTROL.GM12878.unpaired.fastq.gz", "CONTROL.HepG2.unpaired.fastq.gz", "CONTROL.SK-N-SH.unpaired.fastq.gz", "CONTROL.HeLa-S3.unpaired.fastq.gz", "CONTROL.H1-hESC.unpaired.fastq.gz", "CONTROL.MCF-7.unpaired.fastq.gz", "CONTROL.A549.unpaired.fastq.gz", "CONTROL.liver.BSID_ENCBS401URL.unpaired.fastq.gz", "CONTROL.Panc1.unpaired.fastq.gz", "CONTROL.HCT116.unpaired.fastq.gz", "CONTROL.liver.BSID_ENCBS046RNA.unpaired.fastq.gz", "CONTROL.PC-3.unpaired.fastq.gz", "CONTROL.B_cell.unpaired.fastq.gz", "CONTROL.fibroblast_of_lung.unpaired.fastq.gz", "CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz", "CONTROL.astrocyte.unpaired.fastq.gz", "CONTROL.NT2_D1.unpaired.fastq.gz", "CONTROL.myotube.unpaired.fastq.gz", "CONTROL.induced_pluripotent_stem_cell.unpaired.fastq.gz", "CONTROL.GM12892.unpaired.fastq.gz", "CONTROL.HL-60.unpaired.fastq.gz", "CONTROL.foreskin_fibroblast.unpaired.fastq.gz", "CONTROL.IMR-90.unpaired.fastq.gz", "CONTROL.T47D.unpaired.fastq.gz"]

f = open("CTCF_blacklist.txt")
blacklist_fastq = f.read().splitlines()

#print blacklist_fastq
#sys.exit(1)

for i in lst:    
    prefix = os.path.basename(i).rsplit(".BSID",1)[0]

    if ".unpaired." in i or not "CHIPseq" in i:
        continue

    if os.path.basename(i) in blacklist_fastq:
        continue

    prefixCTL = prefix.rsplit(".")[2]

    if prefixCTL in blacklist_ctl:
        continue

    filesize = os.path.getsize(i)

    idx = 1
    for o in order:
        if "."+o+"." in prefix:
            break;
        idx = idx + 1

    if prefix in mp.keys():
        mp[prefix].append( os.path.basename(i) )
        fsize[prefix] = (fsize[prefix][0] + filesize, idx)
    else:
        mp[prefix] = []
        mp[prefix].append( os.path.basename(i) )
        fsize[prefix] = (filesize, idx)

sorted_fsize = sorted(fsize.items(), key=operator.itemgetter(1),reverse=True)

i = 0

sorted_fsize3 = sorted(sorted_fsize, key=operator.itemgetter(2),reverse=False)
sorted_fsize4 = sorted(sorted_fsize3, key=operator.itemgetter(3),reverse=False)

cnt = 0
for tup in sorted_fsize4:
    key = tup[0]
    cnt = cnt + 1

    length = len(mp[key])

    filesize = tup[1]
    o = tup[2]
    svr = tup[3]
    #nth = filesize/1000000000
    nth = filesize/500000000
    if nth == 0:
        nth = 1

    svr_name = "NONE"
    if svr==1:
        svr_name="scg"
    elif svr==2:
        svr_name="nandi"
    elif svr==3:
        svr_name="mitra"
    elif svr==4:
        svr_name="kali"
    elif svr==5:
        svr_name="kadru"
    elif svr==6:
        svr_name="wotan"
    else:
        svr_name="NULL"

    print "#"+ str(cnt) + " , " + str(filesize) + ", order: " + str(o) + ", svr: " + svr_name + ", old #: " + str(tup[4])
    print "NTH="+str(nth)+"; SUFFIX=\""+key+"\""

    if length  == 4:
        print "FASTQ1=$DATA/DREAM_challenge/"+os.path.basename(mp[key][0])
        print "FASTQ2=$DATA/DREAM_challenge/"+os.path.basename(mp[key][1])
        print "FASTQ3=$DATA/DREAM_challenge/"+os.path.basename(mp[key][2])
        print "FASTQ4=$DATA/DREAM_challenge/"+os.path.basename(mp[key][2])
    elif length  == 3:
        print "FASTQ1=$DATA/DREAM_challenge/"+os.path.basename(mp[key][0])
        print "FASTQ2=$DATA/DREAM_challenge/"+os.path.basename(mp[key][1])
        print "FASTQ3=$DATA/DREAM_challenge/"+os.path.basename(mp[key][2])
    elif length  == 2:
        print "FASTQ1=$DATA/DREAM_challenge/"+os.path.basename(mp[key][0])
        print "FASTQ2=$DATA/DREAM_challenge/"+os.path.basename(mp[key][1])
    elif length == 1:
        print "FASTQ1=$DATA/DREAM_challenge/"+os.path.basename(mp[key][0])
    else:
        print "LEN>3: " + str( length )

    prefixCTL = key.rsplit(".")[2]

    foundCTL = False      

    lst2 = get_files_by_file_size("/srv/gsfs0/scratch/leepc12/data/DREAM_challenge", True)

    for k in lst2:
        if "."+prefixCTL+"." in k and "CONTROL" in k and k.endswith("unpaired.fastq.gz"):
            print "CTL_FASTQ=$DATA/DREAM_challenge/"+os.path.basename(k)
            print "WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK/out/align; mkdir -p $WORK/out/qc"
            print "cd $WORK/out/align; ln -s ../../../../DREAM_challenge_ctl/CONTROL."+prefixCTL+"/out/align/rep1 ctl1"
            print "cd $WORK/out/qc; ln -s ../../../../DREAM_challenge_ctl/CONTROL."+prefixCTL+"/out/qc/rep1 ctl1"
            print "cd $WORK;"
            str_FASTQ = " "
            if length == 3:
                str_FASTQ = " -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 "
            if length == 2:
                str_FASTQ = " -fastq1 $FASTQ1 -fastq2 $FASTQ2 "
            if length == 1:
                str_FASTQ = " -fastq1 $FASTQ1 "

            subsample = ""
            if os.path.basename(k) in ctl_to_subsample:
                subsample = " -subsample_ctl 40000000 "

            print "bds_scr ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -callpeak spp -no_naive_overlap -species hg19 -nth $NTH " + str_FASTQ + "-ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out" + subsample
            if os.path.basename(k) in ctl_to_subsample:
                print "##SUBSAMPLE!"
            print "sleep 5"
            print
            foundCTL = True

    if not foundCTL:
        print "#NOT FOUND! (SE, CTL)"
        print
