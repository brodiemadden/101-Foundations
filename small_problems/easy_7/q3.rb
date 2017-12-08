# method that takes a single string argument
# returns a new string that contains the OG value of argument
# but with ever first character of every word capitalized

def word_cap(string)
  word_array = string.split.map do |word|
    word.capitalize
  end
  word_array.join(' ')
end

# OR (more succinctly)
def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

puts word_cap('four score and seven')
puts word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')
