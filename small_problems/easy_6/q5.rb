# method that returns a NEW array with elements in reverse order
# DOES NOT MODIFY OG array

=begin # my solution
def reverse_array(array)
  new_array = []
  negative_index = -1

  while negative_index.abs <= array.size
    new_array << array[negative_index]

    negative_index -= 1
  end

  new_array
end
=end

=begin # given solution
def reverse_array(array)
  result_array = []
  array.reverse_each { |element| result_array << element}
  result_array
end
=end

=begin # each_with_object solution
def reverse_array(array)
  array.each_with_object([]) { |element, object_array| object_array.insert(0, element) }
end
=end



p reverse_array([1,2,3,4])
p reverse_array(%w(a b c d e))
p reverse_array(['abc'])
p reverse_array([])

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse_array(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]
