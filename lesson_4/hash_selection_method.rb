my_numbers = [1, 4, 3, 7, 2, 6]

def multiply_numbers(numbers, multiply_number)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    multiplied_numbers = current_number * multiply_number

    counter += 1
  end
  p multiplied_numbers
end

multiply_numbers(my_numbers, 5)
