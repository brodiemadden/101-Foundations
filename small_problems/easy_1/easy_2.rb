#define a method
#takes one integer (pos, neg or 0)
#returns true if odd

def is_odd?(num)
  num % 2 == 1
end

p is_odd?(10)
p is_odd?(-15)
p is_odd?(72)
p is_odd?(-43)
