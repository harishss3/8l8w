print "Welcome to the file copying code! Please enter the name of your source file: "
sfile = STDIN.gets.chomp()
print "Please enter the name of your destination file: "
dfile = STDIN.gets.chomp()
sfh = File.open(sfile)
dfh = File.open(dfile,'w')
flen = sfh.read().length()
dfh.write(sfh.read())
puts "The source file is #{flen} charecters long."
sfh.close()
dfh.close()
puts "File has been copied succesfully!"
puts "Also, File.exists? <file_name> returns true if file exists and false otherwise."
