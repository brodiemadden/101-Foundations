# Write a method that takes a string, and returns a boolean indicating whether
# this string has a balanced set of parenthesis

# balancer("hi") # => true
# balancer("(hi") # => false
# balancer("(hi)") # => true
# balancer(")hi(") # => false

def balancer(string)
  return false unless string.count("(") == string.count(")")

  paren_count  = 0
  failure = true

  string.split("").each do |char|
    paren_count += 1 if char == "("
    paren_count -= 1 if char == ")"

    if paren_count < 0
      return false
      break
    end
  end

  failure
end

p balancer("hi")
p balancer("(hi")
p balancer("(hi)")
p balancer(")hi(")
