# method that returns a list of all substrings of a string, starting at the beginning
# return value should be arraged in order from shortest to longest

def substrings_at_start(string)
  substrings = []
  1.upto(string.length) do |int|
    substrings << string.slice(0, int)
  end
  substrings
end


p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')
