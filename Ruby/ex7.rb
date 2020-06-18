a1,a2 = ARGV

puts "We can pass arguments to our file (via command line) also"
puts "The name of this file is #{$0}"
puts "The first argument passed is #{a1}"
puts "The second argument passed is #{a2}"
puts "Also remember that if we pass arguments then, we need to STDIN.gets to get input."