# method that returns a list of all substrings of a string
# returned list should be ordered by where in the string the substring begins
# all substrings that start and index 0 should come first, then index 1 etc
# substrings at a given position should be returned in order from shortest to longest

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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
