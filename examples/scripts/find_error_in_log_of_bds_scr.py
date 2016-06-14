#!/usr/bin/env python2

import os
import sys

#filename = ""
#for line in sys.stdin:
#    filename = line.strip()
filename = sys.argv[1]

if filename == "" :
    sys.exit(0)

f = open(filename)
lines = f.read().splitlines()

found_error = False
err_str = ""

idx_err = 0
idx_new_screen = 0

for idx in range(len(lines)):
#for i in lines:
    i = lines[idx]
    if "rror" in i or "npld$fdr" in i or "nexpected end of file" in i or "could not allocate memory" in i:
        found_error = True
        idx_err = idx

    if "Created a new screen" in i:
        found_error = False
        idx_new_screen = idx

if found_error:
    err_str = ""
    for idx2 in range(idx_err, min( idx_err+4, len(lines)-1 ), 1 ):
        err_str = err_str + "\t" + lines[idx2] + "\n"

    scr_str = ""
    for idx2 in range(idx_new_screen, len(lines)-1, 1 ): #min( idx_new_screen+5, len(lines)-1 ), 1 ):         
        if "Task dis" in lines[idx2] :
             scr_str = scr_str + "\t" + lines[idx2] + "\n"
        if "npld$fdr" in lines[idx2] :
             scr_str = scr_str + "\t" + lines[idx2] + "\n"
        if "nexpected end of file" in lines[idx2] :
             scr_str = scr_str + "\t" + lines[idx2] + "\n"
        if "could not allocate memory" in lines[idx2] :
             scr_str = scr_str + "\t" + lines[idx2] + "\n"
        if "error reading from connection" in lines[idx2] :
             scr_str = scr_str + "\t" + lines[idx2] + "\n"
        if "Invalid record in file" in lines[idx2] :
             scr_str = scr_str + "\t" + lines[idx2] + "\n"



    #os.system("tail -n 20 " + filename )
    print
    print "================================================================================="
    print filename
    print err_str
    print scr_str