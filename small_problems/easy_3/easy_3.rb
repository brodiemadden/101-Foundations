#ask user for input of string (one or more words)
#give back number of characters
#spaces don't count as characters

print "Please write a word or multiple words:"
words = gets.chomp

number_of_characters = words.delete(' ').length

puts "There are #{number_of_characters} characters in '#{words}'."
