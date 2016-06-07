#!/usr/bin/env python2

import os


mp = dict()

lst = os.listdir(os.getcwd())
lst.sort()

for i in lst:
    prefix = i.rsplit(".BSID",1)[0]
    if ".R1." in i or ".R2." in i or not "CHIPseq" in i:
        continue
        prefix = i.rsplit(".BSID",1)[0]
    
    if prefix in mp.keys():
        mp[prefix].append( os.path.basename(i) )
    else:
        mp[prefix] = []
        mp[prefix].append( os.path.basename(i) )

cnt = 0
for key in mp.keys():
    cnt = cnt + 1
    print "#"+ str(cnt)
    print "NTH=1; SUFFIX=\""+key+"\""
    length = len(mp[key])

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
            print "WORK=$RUN/DREAM_challenge/$SUFFIX; mkdir -p $WORK; cd $WORK;"
            str_FASTQ = " "
            if length == 3:
                str_FASTQ = " -fastq1 $FASTQ1 -fastq2 $FASTQ2 -fastq3 $FASTQ3 "
            if length == 2:
                str_FASTQ = " -fastq1 $FASTQ1 -fastq2 $FASTQ2 "
            if length == 1:
                str_FASTQ = " -fastq1 $FASTQ1 "

            print "bds_scr ${SUFFIX//\//_} /users/leepc12/code/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH " + str_FASTQ + "-ctl_fastq $CTL_FASTQ -title ${SUFFIX//\//_} -url_base http://mitra.stanford.edu/kundaje/leepc12/DREAM_challenge/$SUFFIX/out"
            print
            foundCTL = True

    if not foundCTL:
        print "#NOT FOUND! (SE, CTL)"
        print


