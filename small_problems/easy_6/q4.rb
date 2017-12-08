=begin # my solution
def reverse_array!(array)
  index = 0
  while index <= (array.size - 1)
    last_element = array.pop
    array.insert(index , last_element)

    index += 1
  end
  
  array
end
=end

def reverse_array!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

p list = [1,2,3,4]
p list.object_id
p reverse_array!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id

p list = %w(a b c d e)
p reverse_array!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]
