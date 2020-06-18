panda = 42
animal = "panda"
puts "This is how we print variables in ruby: \"a var named kfp \#{kfp} will be printed here\""
puts "Panda is #{panda}"
puts "We can also use format strings to do the same"
puts "\" content \%f\" \%var"
puts "where f is the format specifier"
puts "This %s is also %d" % [animal,panda]