# - method takes one argument (positive)
# - iterate through string and append each character to new array
# - returns a list of the digits (array)


def digit_list(num)
  digits = []

  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end

  digits
end

p digit_list(7735)

#OR

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end
