require "open-uri"

puts "Libraries can be imported by using the require keyword"

open("http://home.iitk.ac.in/~harishss/") do |f|
	f.each_line {|line| p line}
	puts f.base_uri,f.content_type,f.last_modified
end

#do end