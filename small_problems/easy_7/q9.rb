# method that takes two array arguments where each array contains a list of numbers
# returns a new array that contains the product of every pair of numbers that
# can be formed between the two arrays
# results should be sorted by increasing value

=begin # first try
def multiply_all_pairs(arr1, arr2)
  product_array = arr1.product(arr2).flat_map do |sub_array|
    sub_array.reduce(:*)
  end
  product_array.sort
end
=end

# refactored compact solution
def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).flat_map { |sub_array| sub_array.reduce(:*) }.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2])
