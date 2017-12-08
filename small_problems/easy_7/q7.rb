# method that takes an array of integers as input, multiplies all numbers together
# divides the result by the number of entries in the array
# prints the result rounded to 3 decimal places

def show_multiplicative_average(num_array)
  result = 1.0
  num_array.each do |num|
    result *= num.to_f
  end
  result /= num_array.size
  puts format('%.3f', result)
end

show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
