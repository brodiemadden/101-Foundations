#write a method that takes one argument -> a string of one or more words
#returns string with letters in each word in reverse order only
#if the word has 5 or more characters

#convert string to array
#iterate through array and reverse each element (or word) if the word has 5 or more char

def reverse_sentence(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_sentence('Hello World')
