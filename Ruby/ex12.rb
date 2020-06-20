def parity(num)
    if num%2 == 1
        puts "The number is odd."
    else
        puts "The number is even."
    end
end

def sq(num)
    num*num
end

puts "Let's define some functions!"
print "Enter a number: "
n = gets.chomp.to_i
parity(n)
puts "Square of #{n} is #{sq(n)}"