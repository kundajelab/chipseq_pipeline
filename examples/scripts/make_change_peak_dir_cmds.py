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

#ctl_to_subsample = ["CONTROL.K562.unpaired.fastq.gz", "CONTROL.GM12878.unpaired.fastq.gz", "CONTROL.HepG2.unpaired.fastq.gz", "CONTROL.SK-N-SH.unpaired.fastq.gz", "CONTROL.HeLa-S3.unpaired.fastq.gz", "CONTROL.H1-hESC.unpaired.fastq.gz", "CONTROL.MCF-7.unpaired.fastq.gz", "CONTROL.A549.unpaired.fastq.gz", "CONTROL.liver.BSID_ENCBS401URL.unpaired.fastq.gz", "CONTROL.Panc1.unpaired.fastq.gz", "CONTROL.HCT116.unpaired.fastq.gz", "CONTROL.liver.BSID_ENCBS046RNA.unpaired.fastq.gz", "CONTROL.PC-3.unpaired.fastq.gz", "CONTROL.B_cell.unpaired.fastq.gz", "CONTROL.fibroblast_of_lung.unpaired.fastq.gz", "CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz"]
ctl_to_subsample = ["CONTROL.K562.unpaired.fastq.gz", "CONTROL.GM12878.unpaired.fastq.gz", "CONTROL.HepG2.unpaired.fastq.gz", "CONTROL.SK-N-SH.unpaired.fastq.gz", "CONTROL.HeLa-S3.unpaired.fastq.gz", "CONTROL.H1-hESC.unpaired.fastq.gz", "CONTROL.MCF-7.unpaired.fastq.gz", "CONTROL.A549.unpaired.fastq.gz", "CONTROL.liver.BSID_ENCBS401URL.unpaired.fastq.gz", "CONTROL.Panc1.unpaired.fastq.gz", "CONTROL.HCT116.unpaired.fastq.gz", "CONTROL.liver.BSID_ENCBS046RNA.unpaired.fastq.gz", "CONTROL.PC-3.unpaired.fastq.gz", "CONTROL.B_cell.unpaired.fastq.gz", "CONTROL.fibroblast_of_lung.unpaired.fastq.gz", "CONTROL.endothelial_cell_of_umbilical_vein.unpaired.fastq.gz", "CONTROL.astrocyte.unpaired.fastq.gz", "CONTROL.NT2_D1.unpaired.fastq.gz", "CONTROL.myotube.unpaired.fastq.gz", "CONTROL.induced_pluripotent_stem_cell.unpaired.fastq.gz", "CONTROL.GM12892.unpaired.fastq.gz", "CONTROL.HL-60.unpaired.fastq.gz", "CONTROL.foreskin_fibroblast.unpaired.fastq.gz", "CONTROL.IMR-90.unpaired.fastq.gz", "CONTROL.T47D.unpaired.fastq.gz"]

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

    prefixCTL = key.rsplit(".")[2]

    foundCTL = False      

    lst2 = get_files_by_file_size("/srv/gsfs0/scratch/leepc12/data/DREAM_challenge", True)

    for k in lst2:
        if "."+prefixCTL+"." in k and "CONTROL" in k and k.endswith("unpaired.fastq.gz"):
            if os.path.basename(k) in ctl_to_subsample:
                print "WORK=$RUN/DREAM_challenge/$SUFFIX;"
                print "cd $WORK;"
                print "mv out/peak out/peak_with_large_ctl_before_40M"
            print
