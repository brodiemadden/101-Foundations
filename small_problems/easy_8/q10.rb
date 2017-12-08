# method that takes a non-empty string argument, returns the middle character or characters
# if the argument has an odd length, should return exactly one characters
# if the argument has an even length, should return exactly two characters

def center_of(string)
  center_index = string.size / 2
  string.size.odd? ? string[center_index] : string[center_index - 1, 2]
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
