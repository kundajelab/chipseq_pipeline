#!/usr/bin/env python

import sys
import argparse
import gzip

def parseArgument():
	# Parse the input
	parser=argparse.ArgumentParser(description=\
			"Remove reads with too many multi-mappers as well as uniquely-mapping reads with a low MAPQ score")
	parser.add_argument("--samFileName", required=True, help="gzipped sam file")
	parser.add_argument("--MAPQThresh", required=False, type=int, default=30,\
			help='MAPQ threshold for uniquely-mapping reads')
	parser.add_argument("--MultiMapThresh", required=False, type=int, default=4,\
			help='Maximum number of allowed best hits')
	parser.add_argument("--outputFileName", required=True,\
			help='Name of sam file where the output will be recorded')
	options = parser.parse_args()
	return options

def removeMultiMappers(options):
	# Remove reads with too many multi-mappers as well as uniquely-mapping reads with a low MAPQ score
	samFile = gzip.open(options.samFileName)
	outputFile = gzip.open(options.outputFileName, 'w+')
	for line in samFile:
		# Iterate through the lines of the sam file and record those that meet the criteria
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
				continue
			for le in lineElements[12:-1]:
				# Iterate through the tags and find the X0 tag
				if le[0:2] == "X0":
					# The current tag has the multi-mapping information
					X0TagElements = le.split(":")
					numBestHits = int(X0TagElements[2])
					if (numBestHits > 1) and (numBestHits <= options.MultiMapThresh):
						# The read is a multi-mapper with sufficiently few best hits, so keep it
						outputFile.write(line)
					break
	samFile.close()
	outputFile.close()
	
if __name__ == "__main__":
	options = parseArgument()
	removeMultiMappers(options)
