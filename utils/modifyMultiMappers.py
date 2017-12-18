#!/usr/bin/env python

import sys
import argparse
import gzip
import io

def parseArgument():
	# Parse the input
	parser=argparse.ArgumentParser(description=\
			"Remove reads with too many multi-mappers as well as uniquely-mapping reads with a low MAPQ score")
	parser.add_argument("--samFileName", required=False, default=None, help="gzipped sam file, will use stdin if None")
	parser.add_argument("--MAPQThresh", required=False, type=int, default=30,\
			help='MAPQ threshold for uniquely-mapping reads')
	parser.add_argument("--MultiMapThresh", required=False, type=int, default=4,\
			help='Maximum number of allowed best hits')
	parser.add_argument("--outputFileName", required=False, default=None,\
			help='Name of sam file where the output will be recorded, will use stdout if None')
	parser.add_argument("--outputRemovedReadFileName", required=False, default=None,\
                        help='Name of text file where the reads that will be removed will be recorded, will not recorde the removed reads if None')
	options = parser.parse_args()
	return options

def modifyMultiMappers(options):
	# Change the MAPQ score for reads with a sufficiently low number of multimappers
	sameFile = None
	if options.samFileName != None:
		# A sam file has been inputted
		samFile = io.bufferedReader(gzip.open(options.samFileName))
	else:
		samFile = sys.stdin
	outputFile = None
	if options.outputFileName != None:
		# An output file has been inputted
		outputFile = open(options.outputFileName, 'w+')
	else:
		# The output will be written to stdout
		outputFile = sys.stdout
	outputRemovedReadFile = None
	if options.outputRemovedReadFileName != None:
		# The removed reads will be recorded
		outputRemovedReadFile = open(options.outputRemovedReadFileName, 'w+')
	for line in samFile:
		# Iterate through the lines of the sam file and record those that meet the criteria
		#outputFile.write(line)
		#if line[0] != "@":
		#	break
		#continue
		if line[0] == "@":
			# The line is a header, so keep it
			outputFile.write(line)
			continue
		lineElements = line.strip().split("\t")
		if int(lineElements[4]) >= options.MAPQThresh:
			# The read is uniquely-mapping and sufficiently high-quality
			outputFile.write(line)
		else:
			# Check if the read is multi-mapping and, if so, if there are sufficiently few best hits
			if ("X0" not in line):
				# There is no information about multi-mapping, so skip the current line
				outputFile.write(line)
				continue
			for le in lineElements[12:-1]:
				# Iterate through the tags and find the X0 tag
				if le[0:2] == "X0":
					# The current tag has the multi-mapping information
					X0TagElements = le.split(":")
					numBestHits = int(X0TagElements[2])
					if (numBestHits > 1) and (numBestHits <= options.MultiMapThresh):
						# The read is a multi-mapper with sufficiently few best hits, so keep it
						lineElements[4] = "30" # Adjusting the MAPQ threshold so that the read will not get eliminated later
					elif options.outputRemovedReadFileName != None:
						# The current read will later be removed because it has too many multi-mappers, so record it
						outputRemovedReadFile.write(line)
					break
			outputFile.write("\t".join(lineElements) + "\n")
	if options.samFileName != None:
		# Close the sam file
		samFile.close()
	if options.outputFileName != None:
		# Close the output file
		outputFile.close()
	if options.outputRemovedReadFileName != None:
		# Close the file with the reads that will later be removed because they have too many multi-mappers
		outputRemovedReadFile.close()
	
if __name__ == "__main__":
	options = parseArgument()
	modifyMultiMappers(options)
