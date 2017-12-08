# method that takes two arrays as arguments
# returns an array that contains all of the values from the argument arrays
# no duplication of values in returned array (even if there are duplicates in OG)

=begin # my solution
 def merge(array1, array2)
  merged_array = array1 + array2
  merged_array.uniq!.sort
end
=end

def merge(array1, array2)
  array1 | array2
end

p merge([1, 3, 5], [3, 6, 9])
