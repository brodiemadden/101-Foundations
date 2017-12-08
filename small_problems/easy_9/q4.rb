# method that takes an integer arugument
# returns array of all integers, in sequence, between 1 and argument

=begin # my attempt that worked but isn't ideal
def sequence(number)
  sequence_array = []
  1.upto(number) { |num| sequence_array << num }
  sequence_array
end
=end

# given solution adapted to account for negative arguments
def sequence(number)
  number > 0 ? (1..number).to_a : (number..-1).to_a
end

p sequence(-5)
p sequence(5)
p sequence(3)
p sequence(1)
