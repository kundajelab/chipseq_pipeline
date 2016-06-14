#!/usr/bin/env python2

import os


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

ctl = []

lst = get_files_by_file_size( os.getcwd(), True )

for i in lst:
    if "CONTROL." in i:
        ctl.append( os.path.basename(i) )

cnt = 1
for j in ctl:
    if ".R1." in j or ".R2." in j:
        continue
    prefix = j.rsplit(".unpaired",1)[0]
    filesize = os.path.getsize(j)
    print "#" + str(cnt) + " size:" + str( filesize )
    nth = filesize/2000000000
    if nth == 0:
        nth = 1
    print "NTH="+str(nth)+"; SUFFIX="+prefix
    print "FASTQ1=$DATA/DREAM_challenge/"+j
    print "WORK=$RUN/DREAM_challenge_ctl/$SUFFIX; mkdir -p $WORK; cd $WORK;"
    print "bds_scr ${SUFFIX//\//_} $CODE/bds_atac/chipseq/chipseq.bds -species hg19 -nth $NTH -fastq1 $FASTQ1 -final_stage tag"
    print
    cnt = cnt + 1