# Import the argparse library
import argparse

import os
import sys

# Create the parser
my_parser = argparse.ArgumentParser(prog='pycat',description='List the content of a folder')

# Add the arguments
my_parser.add_argument('Name',metavar='name',type=str, help='the names of the file',nargs='+')
my_parser.add_argument('-n',action='store_true',help='Numbers all the lines')
my_parser.add_argument('-E',action='store_true',help='print $ at the end of each line')

# Execute the parse_args() method
args = my_parser.parse_args()

input_name = args.Name
'''
flag = 1
for name in input_name:
	if '>' in name:
		flag = 0
''' 
file=1;

for name in input_name:
	try:
		i=1
		fhand = open(name)
		endwith='\n'
		if args.E:
			endwith='$'
		for line in fhand:
			line=line.rstrip()
			if args.n:
				print(i,end=' ')
				i=i+1
			print(line,end=endwith)
	except:
		print('File',file,'does not exist!')
	file=file+1;