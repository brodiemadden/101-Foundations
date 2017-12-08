# method that takes a string, returns a hash that contains   entries
# one represents th no. of characters that are lowercase letters
# one the no. of characters that are uppercase letters
# one the no. of characters that are neither

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

p letter_case_count('abCdef 123')
