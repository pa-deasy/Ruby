puts "Welcome " + "to " + "Odin!"
puts "Welcome " << "to " << "Odin!"
puts "Welcome ".concat("to ").concat("Odin!")

puts "hello"[0]
puts "hello"[0..2]
puts "hello"[0, 2]
puts "hello"[-1]

puts "Hello\sthere!\nHello\sthere!"

name = "Odin"
puts "Hello, #{name}"
puts 'Hello, #{name}'

puts "hello".capitalize

puts "hello".include?("lo")
puts "hello".include?("z")

puts "hello".upcase
puts "Hello".downcase

puts "hello".empty?
puts "".empty?

puts "hello".length

puts "hello".reverse

puts "hello world".split
puts "hello".split("")

puts "hello world   ".strip

puts "he770".sub("7", "l")
puts "he770".gsub("7", "l")
puts "hello".insert(-1, " dude")
puts "!".prepend("hello, ", "world")

puts 5.to_s
puts nil.to_s
puts :symbol.to_s