# method that combines two arrays passed in as arguments
# returns a new array that contains all elements from both array arguments,
# with elements the elements taken in alternation
# assume both input arrays aren't empty and have same num of arguments


def interleave(array_1, array_2)
  interwoven_array = []

  array_1.each_with_index do |element, index|
    interwoven_array << element << array_2[index]
  end

  interwoven_array
end


def interleave_zip(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave_zip([1, 2, 3], ['a', 'b', 'c'])
