# method takes a string with one or more space separated words
# returns a has that shows the number of words of different sizes

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end
