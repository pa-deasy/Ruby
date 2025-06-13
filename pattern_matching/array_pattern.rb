array = [1, 2]

case array
in [1, 2] then puts :match_1_2
in [3, 4] then puts :match_3_4
end

case array
in 1, 2 then puts :match_1_2
in 3, 4 then puts :match_3_4
end

puts '---------------------'

case array
in [Integer, Integer]
  puts :match
in [String, String]
  puts :no_match
end

puts '---------------------'


array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

case array
in [Integer, Integer, *, Integer, Integer]  # check that the first two and last two elements are integers
  puts :match
else 
  puts :no_match
end

case array
in [1, 2, 3, 4, _, 6, 7, _, _]
  puts :match
else
  puts :no_match
end

puts '---------------------'

array = [1, 2, [3, 4]]

case array
in [_, _, [3, 4]]
  puts :match
else 
  puts :no_match
end

puts '---------------------'

array = [1, 2, 3, 4, 5]

case array
in [1, 2, 3, a, b]
  puts a
  puts b
end

puts '---------------------'

case [1, 2, 3, [4, 5]]
in [1, 2, 3, [4, a]] => arr
  puts a
  p arr
end
