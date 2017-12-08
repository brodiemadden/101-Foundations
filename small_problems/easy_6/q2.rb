# method takes an ARRAY OF STRINGS
# returns an array with the same string values, except with vowels removed

# iterate through strings
# string.chars and remove vowels


=begin # my roundabout solution because I didn't pay close enough attention to how delete works
def remove_vowels(array_of_strings)
  vowels = %w(a e i o u A E I O U)
  array_of_strings.map do |string|
    no_vowels = string.chars.reject do |char|
                  vowels.include?(char)
                end
    no_vowels.join('')
  end
end
=end

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))
