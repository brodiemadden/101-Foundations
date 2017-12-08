# write a method that takes a string as an argument
# returns a string with every character doubled

def repeater(string)
  doubled_chars = string.chars.map { |char| char + char }
  doubled_chars.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
