#define method that takes one argument -> a positive integer
#method must return a STRING of alternating 1s and 0s, always starting with 1
#the length of the string should match the given integer

def string(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0  #ternary operator
    numbers << numbers
  end

  numbers.join
end
