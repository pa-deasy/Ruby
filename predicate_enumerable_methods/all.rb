fruits = ["apple", "banana", "stawberry", "pineapple"]
matches = []

fruits.each do |fruit|
  if fruit.length > 3
    matches.push(fruit)
  end
end

p fruits.length == matches.length

matches = []

fruits.each do |fruit|
  if fruit.length > 6
    matches.push(fruit)
  end
end

p fruits.length == matches.length

p fruits.all? { |fruit| fruit.length > 3 }

p fruits.all? { |fruit| fruit.length > 6 }