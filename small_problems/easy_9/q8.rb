# method that takes two integers as arguments
# first argument is a count, the second is the first number of a sequence the method creaters
# return an array containing same number of elements as the count argument
# values of each element will be multiples of the starting number


def sequence(count, start_num)
  sequence_array = []
  count.times { |int| sequence_array << start_num * (int + 1) }
  sequence_array
end


p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)
