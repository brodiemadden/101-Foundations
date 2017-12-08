#define a method that takes 2 arguments -> positive intgeger and boolean
#calculates bonus for a given salary
#if boolean is true, bonus should be half of the salary
#if boolean is false, bonus should be 0

def calculate_bonus(num, boolean)
    if boolean == true
      num / 2
    else
      0
    end
  end

#OR

def calculate_bonus(salary, boolean)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
