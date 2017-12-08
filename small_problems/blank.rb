def short_long_short(string1, string2)
  if string1.length > string2.length
    puts string2 + string1 + string2
  elsif string2.length > string1.length
    puts string1 + string2 + string1
  end
end

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')
