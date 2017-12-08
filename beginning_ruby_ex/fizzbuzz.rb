# write a method that takes two arguments: the first is the starting number
# and the second is the ending number. Print out all numbers between the two
# numbers, except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz" and if a number is divisible by 3 and 5, print "FizzBuzz"

def fizzbuzz(num1, num2)
  array = []
  (num1..num2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      array << "FizzBuzz"
    elsif num % 3 == 0
      array << "Fizz"
    elsif num % 5 == 0
      array << "Buzz"
    else
      array << num
    end
  end
  puts array.join(", ")
end

fizzbuzz(1, 15)
