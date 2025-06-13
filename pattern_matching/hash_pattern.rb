case { a: 'apple', b: 'banana' }
in { a: 'aardvark', b: 'bat' }
  puts :no_match
in { a: 'apple', b: 'banana' }
  puts :match
end

puts '---------------------'

case { a: 'apple', b: 'banana' }
in { a: a, b: b }
  puts a
  puts b
end

puts '---------------------'

case { a: 'apple', b: 'banana' }
in a:, b:
  puts a
  puts b
end

puts '---------------------'

case { a: 'ant', b: 'ball', c: 'cat' }
in { a: 'ant', **rest }
  p rest
end

puts '---------------------'

case { a: 'ant', b: 'ball' }
in { a: 'ant', **nil }
  puts :no_match
in { a: 'ant', b: 'ball' }
  puts :match
end

puts '---------------------'

case { a: 'ant', b: 'ball' }
in { a: 'ant' } => hash
  p hash
end