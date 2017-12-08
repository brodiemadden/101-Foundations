# method that determines the mean of the three scores passed to it
# returns the letter value associated with that grade

def get_grade(num1, num2, num3)
  grade = (num1 + num2 + num3) / 3
  case grade
  when (90..100) then "A"
  when (80..89)  then "B"
  when (70..79)  then "C"
  when (60..69)  then "D"
  else                "F"
  end
end

p get_grade(95, 90, 93)
p get_grade(50, 50, 95)
