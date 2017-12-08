#write a method that take a string argument
#returns true if string is a plindrome, false otherwise
#case, punctuation and spaces matter

def palindrome?(string)
  string == string.reverse.
end





p palindrome?('madam') == true
p palindrome?('Madam') == false
p palindrome?("madam i'm adam") == false
p palindrome?('356653') == true
p palindrome?([1, 2, 2, 1]) == true
p palindrome?([1, 2, 2, 1, 5]) == true
