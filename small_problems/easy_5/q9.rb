# method that takes a string argument
# returns a new string that contains the value of OG string with
# all consecutive duplicate characters collapsed into a single character

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= (text.length - 1)
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''