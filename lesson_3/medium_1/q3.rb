def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

p factors(80)

p factors(0)

# - the purpose of number % dividend == 0 is to check that
#   the number is clearly divisible and no remainder

# - the last divisors is the last line of the method so that
#   it is what the method returns
