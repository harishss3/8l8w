fname = ARGV.first

txt = File.open(fname)
puts "Here is a list of some gobblefunk words:"
puts txt.read()