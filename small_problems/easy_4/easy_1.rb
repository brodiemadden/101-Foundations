#write a method that takes two strings as arguments
#determines the longest of the two strings
#returns result of concatenating the short, long, then short string
#assume strings are different length

def short_long_short(string1, string2)
  if string1.length > string2.length
    puts string2 + string1 + string2
  else
    puts string1 + string2 + string1
  end
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh')
puts short_long_short('', 'xyz')
