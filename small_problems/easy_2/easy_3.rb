puts "How much is the bill in dollars?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
per_cent = gets.chomp.to_f/100

tip   = bill * per_cent
total = bill + tip

puts "The tip is $#{tip}."
puts "The total is $#{total}"
