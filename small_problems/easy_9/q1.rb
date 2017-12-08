# method that takes 2 arguments, an array and a hash
# array will contain 2 or more elements that produce a person's name(when combined with spaces)
# hash wil contain two keys, :title and :occupation, and appropriate values
# method should return greeting that uses full name and mentions title

def greetings(name_array, info_hash)
  name = name_array.join(' ')
  title_occupation = info_hash.values.join(' ')
  "Hello #{name}, great to finally meet a #{title_occupation}"
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
