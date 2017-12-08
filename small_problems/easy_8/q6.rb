# method that takes two arguments: first is starting number, second is ending number
# print out all numbers between the two numbers except
# if if number is divisble by 3, print "Fizz"
# if a number is divisible by 5, print "Buzz"
# if a number is divisible by 3 and 5, print "FizzBuzz"

def fizzbuzz_value(num)
  case
  when num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  when num % 3 == 0
    "Fizz"
  when num % 5 == 0
    "Buzz"
  else
    num
  end
end

def fizzbuzz(start_num, end_num)
  fizzbuzz_arr = []
  (start_num..end_num).each do |num|
    fizzbuzz_arr << fizzbuzz_value(num)
  end
  fizzbuzz_arr
end

p fizzbuzz(1, 15)
