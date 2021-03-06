# Import the argparse library
import argparse


# Create the parser
my_parser = argparse.ArgumentParser(prog='pycat',description='List the content of a folder')

# Add the arguments
my_parser.add_argument('Name',metavar='name',type=str, help='the names of the file',nargs='+')
my_parser.add_argument('-n',action='store_true',help='Numbers all the lines')
my_parser.add_argument('-E',action='store_true',help='print $ at the end of each line')
my_parser.add_argument('-o',help='name of output file')

# Execute the parse_args() method
args = my_parser.parse_args()

input_name = args.Name
output=None
try:
	fname = args.o
	output = open(fname,'w')
	print("Redirect from Python:",file=output)
except:
	output=None

i=1
for name in input_name:
	try:
		fhand = open(name)
	except:
		print('!!File',name,'does not exist!!')
		break
	endwith='\n'
	if args.E:
		endwith='$'
	for line in fhand:
		line=line.rstrip()
		if args.n:
			print(i,end=' ',file=output)
			i=i+1
		print(line,end=endwith,file=output)

'''
To add:
1. using cat to read from stdin(i.e. cat without arguments)
2. -b numbering non blank lines
'''
