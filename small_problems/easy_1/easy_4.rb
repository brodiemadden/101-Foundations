#define method that counts occurences of each element in vehicles
#once counted, append vehicle and num of occurences to hash as key and value respectively

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurences(array)
  occurences = {}

  array.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
