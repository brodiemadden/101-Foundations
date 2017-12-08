# method that takes a string as an argument, returns a NEW string
# that conatins the OG value using a staggered capitalization scheme
# every other character is caps, and remaining characters lowercase
# characters that are not letter don't change, but count as characters for pattern

# my solution
def staggered_case(string)
  staggered_string = ''
  string.chars.each_with_index do |char, index|
    if index.even?
      staggered_string << char.upcase
    else
      staggered_string << char.downcase
    end
  end
  staggered_string
end

# given solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
