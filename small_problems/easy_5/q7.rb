
def word_sizes(string)
  counts = Hash.new(0)
  string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.')
