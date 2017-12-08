# method that returns the next to last word in the string passed to it as an argument
# words are any sequence of non-blank characters

def penultimate(string)
  words_array = string.split(' ')
  words_array[-2]
end

def middle_word(string)
  return "Empty string" if string.empty?
  words_array = string.split(' ')
  words_array[words_array.size / 2]
end

p penultimate('last')
p penultimate('Launch School is great!')

p middle_word('')
p middle_word('last')
p middle_word('Launch School is great!')
