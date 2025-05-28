num_array = [1, 2 , 3, 4, 5]

p num_array
p num_array[-1]
p num_array.first
p num_array.first(2)
p num_array.last
p num_array.last(2)

num_array.push(6)
num_array.push(7, 8, 9)
num_array << 10
p num_array
p num_array.pop
p num_array

num_array.unshift(0)
p num_array
p num_array.shift
p num_array

p num_array.pop(2)
p num_array
p num_array.shift(2)
p num_array

puts "--------------------------"

default_array = Array.new(5, true)  #size, default value
p default_array

puts "--------------------------"

first = ["hello", "there"]
second = ["my", "friend", "hello"]
joined = first + second
p first
p second
p joined
subtracted = first - second
p subtracted

puts "--------------------------"

p [].empty?
p [1].empty?
p [1, 2 ,3].length
p [1, 2, 3].reverse
p [1, 2].include?(2)
p [1, 2].include?(3)
p ["h", "i"].join
p ["a", "1"].join("-")
