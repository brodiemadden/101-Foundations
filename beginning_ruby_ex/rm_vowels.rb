# Write a method that takes an array of strings, and returns an array of
# the same string values, except with the vowels removed

# ** input **
# [green, yellow, black, white]

# ** output **
# grn, yllw, blck, whte

VOWELS = ["a", "e", "i", "o", "u"]

def remove_vowels(strings)
  strings.map do |string|
    split_string = string.split("")
    split_string.reject! { |char| VOWELS.include?(char) }
    split_string.join('')
  end
end

p remove_vowels(["green", "yellow", "black", "white"])
