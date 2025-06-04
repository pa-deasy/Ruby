friends = ["Sharon", "Leo", "Leila", "Brian", "Arun"]

p friends.each {|friend| puts "Hello, " + friend}

p # -----------------------------------------------------

my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}"
end

p # -----------------------------------------------------

my_hash = { "one" => 1, "two" => 2 }

p my_hash.each {|key, value| puts "#{key} is #{value}"}

p my_hash.each {|pair| puts "The pair is #{pair}"}

p # -----------------------------------------------------

fruits = ["apple", "banana", "strawberry", "pineapple"]

p fruits.each_with_index {|fruit, index| puts fruit if index.even?}