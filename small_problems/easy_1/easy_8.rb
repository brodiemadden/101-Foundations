#method takes one argument -> array conatining integers
#returns average of all nums in array
#assume array is never empty and numbers always positive

#define a number variable to add elements too
#iterate through the array and add elements to said variable
#divide that variable by size of original array

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end
