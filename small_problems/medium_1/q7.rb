# method that takes a sentence string as input
# returns the same string with any sequence of words 'zero', 'one' ... 'nine'
# converted to a string of digits

# use a hash {'zero' => '0'.. etc} then iterate through hash and gsub hash key for value

DIGIT_HASH = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
        'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
      }.freeze

def word_to_digit(string)
  DIGIT_HASH.keys.each do |word|
    string.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  string
end


p word_to_digit('Please call me at five five five one two three four. Thanks.')

#string.gsub(/one/, '1')
#string.gsub(/two/, '2')
#string.gsub(/three/, '3')
