puts 5 == 5  #true
puts 5.eql?(5)  #true
puts 5 == 5.0  #true
puts 5.eql?(5.0)  #false

a = "hello"
b = "hello"
puts a.eql?(b)  #true
puts a.equal?(b)  #false

puts 5 <=> 10
puts 10 <=> 10
puts 10 <=> 5