statement = "The Flintstones Rock!"

10.times do
  puts statement
  statement.prepend(" ")
end

# OR

10.times { |number| puts (" " * number) + "The Flintstones Rock!" } # more succinct
