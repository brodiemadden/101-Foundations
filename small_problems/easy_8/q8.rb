# method that takes a string and returns a new string in which every consonant is doubled
# vowels (a,e,i,o,u), digits, punctiuation and whitespace should not be doubled

VOWELS = %w(A E I O U a e i o u)

# my solution because i didn't want to write out a consonant array
# definately less clear than given solution
def double_consonants(string)
  doubled_chars = string.chars.map do |char|
    if char =~ /[A-Za-z]/ && !VOWELS.include?(char)
      char + char
    else
      char
    end
  end
  doubled_chars.join
end

=begin # given solution
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end
=end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
