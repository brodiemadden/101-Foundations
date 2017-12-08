# method name include? that takes an array and a search value as arguments
# return true if the search value is in the array, false if not

=begin # my roundabout unclear way
def include?(array, search_value)
  searched_element_array = array.select { |element| element == search_value}
  !searched_element_array.empty?
end
=end

def include?(array, value)
  !!array.find_index(value)
end

# OR

=begin
def include?(array, value)
  array.each { |element| return true if value == element }
  false
end
=end

p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6)
p include?([], 3)
p include?([nil], nil)
p include?([], nil)
