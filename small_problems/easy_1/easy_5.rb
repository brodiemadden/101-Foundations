#write a method that takes one argument -> a string
#returns same string with WORDS in reverse order

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World')
