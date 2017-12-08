# method that takes a string as an argmuent and returns a new string in which
# the cases are swapped (uppercase = lowercase, lowercase = uppercase)

def swapcase(string)
  letters = string.chars.map do |char|
    if char.match(/[A-Z]/)
      char.downcase
    elsif char.match(/[a-z]/)
      char.upcase
    else
      char
    end
  end
  letters.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')
