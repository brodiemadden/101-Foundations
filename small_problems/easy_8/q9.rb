# method that takes a positive integer as an argument
# returns a number with its digits reversed
# zeros get dropped if they trail other digits eg. 12000 # => 21

def reversed_number(number)
  number.to_s.reverse.to_i
end

p reversed_number(12345)
p reversed_number(12213)
p reversed_number(456)
p reversed_number(12000)  # Note that zeros get dropped!
p reversed_number(1)
