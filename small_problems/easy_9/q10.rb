# method that takes a groery list (array) of fruits with quantities
# converts it to an array of the correct number of each fruit

# my solution
def buy_fruit(fruit_list)
  flat_fruit_array = []
  fruit_list.each do |fruit|
    fruit[1].times { flat_fruit_array << fruit[0]}
  end
  flat_fruit_array
end

=begin # given solution
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end
=end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
