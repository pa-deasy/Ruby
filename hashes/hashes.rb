my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}
p my_hash

empty_hash = Hash.new
p empty_hash

p "------------------"

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}
p shoes
p shoes["summer"]
p shoes["spring"]
p shoes.fetch("spring", "sneakers")
shoes["spring"] = "sneakers"
p shoes
p shoes.delete("spring")
p shoes
p shoes.keys
p shoes.values

p "------------------"

first = {"a" => 100, "b" => 200}
second = {"b" => 254, "c" => 300}
p first
p second
first.merge!(second)
p first

p "------------------"

# rocket syntax for symbols
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
p american_cars
p american_cars[:ford]

# symbols syntax for symbols
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Skyline"
}
p japanese_cars
p japanese_cars[:honda]

