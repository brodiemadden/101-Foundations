flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.select {|name, num| name == "Barney"}.to_a.flatten # my stupid way

p flintstones.assoc("Barney") # easy way
