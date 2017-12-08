# method that takes an array as an argument
# returns two arrays that contain first half and second half of OG array, respectively
# if OG array conatins odd no. of elements, middle element should be placed in first array

def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
