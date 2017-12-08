# write method that takes a string of words
# returns a string in which the first and last letters of every word is swapped

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  result = string.split(' ').map do |word|
             swap_first_last_characters(word)
           end

  result.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
