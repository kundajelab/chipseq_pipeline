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

    print key
