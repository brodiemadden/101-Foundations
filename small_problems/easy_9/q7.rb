# method that takes a first name, a space and a last name passed as a single string argument
# returns a string with last name, a comma, a space and the first name

def swap_name(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts')
