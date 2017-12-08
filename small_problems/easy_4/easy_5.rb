# write method that searches for all multiples of 3 or 5 between 1 and some number
# then computes the sum of multiples
# assume the number passid in is an integer greater than 1

def multisum(number)
  multiples = (1..number).select do |num|
                num % 3 == 0 || num % 5 == 0
              end
  multiples.reduce(:+)
end

p multisum(20)
