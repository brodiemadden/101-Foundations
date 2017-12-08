# method that takes a string as an argument
# returns array that contains every word from the string
# with a space and word length appended

=begin # first long attempt
def word_lengths(string)
  words_array = string.split(' ')
  string.split.map { |word|
    "#{word} #{word.length}"
  end
  words_array
end
=end

# refactored
def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
