# method that takes two array arguments in which each array conatins a list of no.'s
# returns a new array that contains the product of each pair of numbers
# from the argument arrays that have the same index
# assume arguments have same no. of elements

=begin
def multiply_list(array1, array2)
  new_array = []
  array1.each_with_index do |num, index|
    new_array << num * array2[index]
  end
  new_array
end
=end

def multiply_list(list1, list2)
  list1.zip(list2).map { |pair| pair.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])
