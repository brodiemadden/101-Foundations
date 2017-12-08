#ask user for integer greater than 0
#ask user if they want sum or product of numbers
#if user enters 's' determine sum of all numbers between 1 and entered integer
#if user eneters 'p' determine product of all numbers between 1 and entered integer
#output user's choice

=begin
def compute_sum(num)
  total = 0
  1.upto(num) {|value| total += value}
  total
end

def compute_product(num)
  total = 1
  1.upto(num) {|value| total *= value}
  total
end
=end

def compute_sum(num)
  (1..num).inject(:+)
end

def compute_product(num)
  (1..num).inject(:*)
end

integer = 0
until integer > 0
  puts ">> Please enter an integer greater than 0:"
  integer = gets.chomp.to_i
end

operation = ""
until ['s', 'p'].include? operation do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp
end

if operation == 's'
  puts "The sum of the integers between 1 and #{integer} is #{compute_sum(integer)}"
elsif operation == 'p'
  puts "The product of the integers between 1 and #{integer} is #{compute_product(integer)}"
end
