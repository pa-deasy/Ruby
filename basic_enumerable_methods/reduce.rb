my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }
p sum

p my_numbers.reduce { |sum, number| sum + number }

p my_numbers.reduce(1000) { |sum, number| sum + number }

p # -----------------------------------------------------

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |hash, vote|
  hash[vote] += 1
  p hash
end
