# Import the argparse library
import argparse


# Create the parser
my_parser = argparse.ArgumentParser(prog='pysort',description='Sorts the contents of the input file')
group = my_parser.add_mutually_exclusive_group()

# Add the arguments
my_parser.add_argument('Fname',type=str,help='Names of the file(s) to be sorted',nargs='+')
my_parser.add_argument('-r',action='store_true',help='Sorts in descending instaed of ascending')
group.add_argument('-b',action='store_true',help='Ignores leading blanks')
group.add_argument('-f',action='store_true',help='Ignores case while comparision')
my_parser.add_argument('-o',help='name of output file')

# Execute the parse_args() method
args = my_parser.parse_args()

# Setting the output
output=None
try:
	fname = args.o
	output = open(fname,'w')
	print("Redirect from Python:",file=output)
except:
	output=None

# Sorting
files = args.Fname

for fname in files:
    fh = open(fname)
    lines = []
    for line in fh:
        lines.append(line)
    boo=False
    if args.r:
        boo=True
    k=None
    if args.b:
        k=str.lstrip
    if args.f:
        k=str.upper
    lines.sort(key=k,reverse=boo)
    for line in lines:
        print(line.rstrip(),file=output)

'''
To add:
1. Not able to implement -b and -f at the same time as of now. Need to fix that.
'''

