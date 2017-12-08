# write method that takes an array of number as an argument
# returns array with same number of elements, each element has running total
# from OG array

def running_total(array)
  total = 0
  array.map { |num| total += num }
end


p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])
