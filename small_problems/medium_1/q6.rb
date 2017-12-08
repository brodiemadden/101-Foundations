# each operation operates on a REGISTER => current value, not part of the stack
# operations that require two values pop the topmost from the stack (operation
# removes the most recently pushed value from the stack) performs operation using popped
# value and register value, then stores result back in REGISTER

# n => place a value n in the 'register'. do not modify the stack
# PUSH => push the register value on to the stack. leave the value in the register
# ADD => pops value from stack, subtracts it from register value, storing it in register
# SUB => pops value from stack and subtracts from register, storing result in register
# MULT => multiplies popped stack value and register, result stored in register
# DIV => divides popped stack value and register, result stored in register
# MOD => remainder stored in register
# POP => remove topmost item from stack and place in register
# PRINT => print register value



def minilang(string)
  register = 0
  stack = []

  case string
  when include?("n")

  end
end
