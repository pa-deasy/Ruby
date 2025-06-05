fruits = ["apple", "banana", "strawberry", "pineapple"]
result = false

fruits.each do |fruit|
  if fruit.length > 10
    result = false
    break
  end
  result = true
end

p result

result = false

fruits.each do |fruit|
  if fruit.length > 6
    result = false
    break
  end
  result = true
end

p result

p fruits.none? { |fruit| fruit.length > 10 }

p fruits.none? { |fruit| fruit.length > 6 }