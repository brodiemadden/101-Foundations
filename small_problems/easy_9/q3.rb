# method that takes number as argument
# if arugument is positive, return negative of the number
# if number is 0 or negative, return original number

def negative(num)
  num > 0 ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
