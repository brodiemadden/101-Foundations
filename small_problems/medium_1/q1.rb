# method that rotates an array by moving the first element to the end of the array
# original array shouldn't be modified
# do not use Array#rotate or Array#rotate!

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(string)
  rotate_array(string.split).join(' ')
end

def rotate_integer(int)
  rotate_array(int.to_s.chars).join('').to_i
end

p rotate_string("well hey there")
p rotate_integer(12345)
p rotate_array(['a'])
