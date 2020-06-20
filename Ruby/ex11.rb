puts "In this exercise, we will take a look at the if statement."
print "Please enter your speed(in natural units): "
speed = STDIN.gets.chomp.to_f
if speed < 1
puts "Speed up slowpoke!"
elsif speed == 1
    puts "You are travelling at the speed of light!"
else 
    puts "Hey there tachyon!"
end