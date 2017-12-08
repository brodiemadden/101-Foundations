=begin
puts "the value of 40 + 2 is " + (40 + 2)
-throws error because you can't concatenate a string and integer
=end

puts "the value of 40 + 2 is #{(40 + 2)}"

puts "the value of 40 + 2 is " + (40 + 2).to_s
