#!/usr/bin/env bash

source "${HOME}/.bashrc"
set -e

bam="$1"
output_stats="$2"

unique_mapped_seqs_marked_dup=$(sambamba view -c -F \
    "not unmapped and not secondary_alignment and duplicate" "${bam}")

unique_mapped_seqs=$(sambamba view -c -F \
    "not unmapped and not secondary_alignment" "${bam}")

pct_duplication=$(echo $unique_mapped_seqs_marked_dup $unique_mapped_seqs | awk '{print $1/$2}')

unique_seqs_marked_dup=$(sambamba view -c -F \
    "duplicate and not secondary_alignment" "${bam}")

unique_pairs_marked_dup=$(sambamba view -c -F \
    "paired and duplicate and not secondary_alignment and first_of_pair" "${bam}")

unique_pairs=$(sambamba view -c -F \
    "paired and not secondary_alignment and first_of_pair" "${bam}")

echo "## METRICS CLASS" > $output_stats
echo "##" >> $output_stats
echo -e "0\t0\t${unique_pairs}\t0\t${unique_seqs_marked_dup}\t${unique_pairs_marked_dup}\t0\t${pct_duplication}" >> $output_stats
