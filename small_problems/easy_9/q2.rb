# double number == number with even number of digits, left-side exact same as right-side
# double number == 44, 3333, 103103, 7676
# double number != 444, 334433, 107
# method that returns 2 times provided argument number, unless number is a double number
# double numbers returns as is

def double_number?(num)
  str_num = num.to_s
  middle_index = (str_num.size - 1) / 2
  str_num.size.even? && str_num[0..middle_index] == str_num[(middle_index + 1)..-1]
end

def twice(num)
  double_number?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
