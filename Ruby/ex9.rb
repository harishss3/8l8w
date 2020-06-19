puts "Please enter the name of your file:"
fname = STDIN.gets.chomp()
puts "Opening your file..."
fh = File.open(fname,'w')
puts "Please enter two lines :"
l1 = STDIN.gets.chomp()
l2 = STDIN.gets.chomp()
fh.write(l1,"\n",l2)
fh.close()
puts "Thank You!"