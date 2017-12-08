#write a method name xor that takes two arguments
#returns true if exactly one of its arguments are true, and false otherwise

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

=begin
OR

def xor?(value1, value2)
  (value1 && !value2) || (value2 && value1)
  
=end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
