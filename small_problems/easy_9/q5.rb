# method that takes a string argument
# returns true if all alphabetic characters inside string are uppercase
# false otherwise

# if the string is empty there's no uppercase letters in the string
# therefore it makes sense to return false 
def uppercase?(string)
  string.empty? ? false : string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == false
