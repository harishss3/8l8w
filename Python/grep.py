# Import the argparse library
import argparse


# Create the parser
my_parser = argparse.ArgumentParser(prog='pygrep',description='List the content of a folder')

# Add the arguments
my_parser.add_argument('String',metavar='string',type=str, help='the string to search for')
my_parser.add_argument('Fname',type=str,help='Name of file to search',nargs='+')
my_parser.add_argument('-o',help='name of output file')
my_parser.add_argument('-i',action='store_true',help='to make the search case insensitive')
my_parser.add_argument('-c',action='store_true',help='To display only the number of lines which match')
my_parser.add_argument('-l',action='store_true',help='Display the file names that matches the pattern')
my_parser.add_argument('-w',action='store_true',help='Checking for the whole words in a file')
my_parser.add_argument('-n',action='store_true',help='Show line number while displaying the output')

# Execute the parse_args() method
args = my_parser.parse_args()

#Defining output and string
findStr = args.String
output=None
try:
	fname = args.o
	output = open(fname,'w')
	print("Redirect from Python:",file=output)
except:
	output=None

#Open file(s) to be searched
count = 0
num=''
files = args.Fname
for filename in files:
    try:
    	fh = open(filename)
    except:
    	print("!!File",filename,"does not exist!!")
    	sys.exit()
    
    #Searching for string and printing ouput
    i=1
    for line in fh :
    	tempLine=line
    	if args.i:
    		findStr=findStr.lower()
    		tempLine=line.lower()
    	if args.w:
    		findStr=' ' + findStr + ' '
    	if args.n:
    		num = str(i) + ' '
    	if findStr in tempLine:
    		count=count+1
    		if not args.c:
    			print(num,line,sep='',end='',file=output)
    	i=i+1
if args.c:
   	print(count)

'''
Things to add:
1. highlighting the position of the substring
'''