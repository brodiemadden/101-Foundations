def substrings_at_start(string, start_index)
  substrings = []
  start_index.upto(string.length - 1) do |index|
    substrings << string[start_index..index]
  end
  substrings
end

def substrings(string)
  start_index = 0
  all_substrings = []
  while start_index <= string.length - 1
    all_substrings << substrings_at_start(string, start_index)
    start_index += 1
  end
  all_substrings.flatten
end

def palindrome?(string)
  string == string.reverse && string.length > 1
end

def palindromes(string)
  palindromic_substrings = substrings(string).select do |sub_str|
    palindrome?(sub_str)
  end
  palindromic_substrings
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
