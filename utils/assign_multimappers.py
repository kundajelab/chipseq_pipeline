#!/usr/bin/env python2

# piped script to take multimappers and randomly assign
# requires a qname sorted file!!

import sys
import random
import argparse

def parse_args():
    '''
    Gives options
    '''
    parser = argparse.ArgumentParser(description='Saves reads below a alignment threshold and discards all others')
    parser.add_argument('-k', help='Alignment number cutoff')
    args = parser.parse_args()
    alignment_cutoff = args.k

    return alignment_cutoff


if __name__ == "__main__":
    '''
    Runs the filtering step of choosing multimapped reads
    '''

    alignment_cutoff = parse_args()

    # Store each line in sam file as a list of reads, 
    # where each read is a list of elements to easily 
    # modify or grab things
    current_reads = [] 
    current_qname = ''

    for line in sys.stdin:

        read_elems = line.strip().split('\t')

        if read_elems[0].startswith('@'):
            sys.stdout.write(line)
            continue

        # Keep taking lines that have the same qname
        if read_elems[0] == current_qname:
            # Add line to current reads
            current_reads.append(line)
            pass
        else:
            # Discard if there are more than the alignment cutoff
            if len(current_reads) >= alignment_cutoff:
                current_reads = [line]
                current_qname = read_elems[0]
            elif len(current_reads) > 0:
                # Choose first read, which is the primary alignment
                chosen_read = current_reads[0] 
                sys.stdout.write(str(chosen_read))

                # And then discard
                current_reads = [line]
                current_qname = read_elems[0]
            else:
                # First read in file
                current_reads.append(line)
                current_qname = read_elems[0]



