# method that takes an array of numbers and
# returns the sum of the sums of each leading subsequence for that array

# my solution
def sum_of_sums(array)
  n = 1
  running_total = 0
  while n <= array.size
    running_total += array.first(n).reduce(:+)
    n += 1
  end
  running_total
end

=begin # given solution
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end
=end


p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])
