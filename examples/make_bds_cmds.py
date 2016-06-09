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

lst = get_files_by_file_size(os.getcwd(), True)
#lst.sort()

blacklist_ctl = [] #["GM12878","SK-N-SH","K562","HeLa-S3","GM20000","GM13977","HL-60","pancreas"]

f = open("CTCF_blacklist.txt")
blacklist_fastq = f.read().splitlines()

#print blacklist_fastq
#sys.exit(1)

for i in lst:
    prefix = os.path.basename(i).rsplit(".BSID",1)[0]

    if ".R1." in i or ".R2." in i or not "CHIPseq" in i:
        continue

    if os.path.basename(i) in blacklist_fastq:
        continue

    prefixCTL = prefix.rsplit(".")[2]

    if prefixCTL in blacklist_ctl:
        continue

    filesize = os.path.getsize(i)
    
    if prefix in mp.keys():
        mp[prefix].append( os.path.basename(i) )
        fsize[prefix] = fsize[prefix] + filesize
    else:
        mp[prefix] = []
        mp[prefix].append( os.path.basename(i) )
        fsize[prefix] = filesize


sorted_fsize = sorted(fsize.items(), key=operator.itemgetter(1),reverse=True)

#print sorted_fsize

cnt = 0
for tup in sorted_fsize:
    key = tup[0]
    cnt = cnt + 1
    length = len(mp[key])

    filesize = tup[1] #os.path.getsize(mp[key][0])
    #nth = filesize/1000000000
    nth = filesize/500000000
    if nth == 0:
        nth = 1

    print "#"+ str(cnt) + " , " + str(filesize)
    print "NTH="+str(nth)+"; SUFFIX=\""+key+"\""

    if length  == 3:
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

    for k in lst:
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

            print "bds_scr ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH " + str_FASTQ + "-ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out"
            print
            foundCTL = True

    if not foundCTL:
        print "#NOT FOUND! (SE, CTL)"
        print
