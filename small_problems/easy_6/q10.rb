# method that takes a positive integer (n) as an argument
# displays a right angle triangle whose sides each have n stars
# hypotenuse of triangle should have one ned at lower left, and the other at upper right

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(9)
triangle(5)
