i = 0
loop do
  puts "i is #{i}"
  i += 1

  break if i == 10
end

puts "-----------------------------------"

i = 0
while i < 10 do
  puts "i is #{i}"
  i += 1
end

# puts "-----------------------------------"

# while gets.chomp != "yes" do
#   puts "Are we there yet?"
# end

puts "-----------------------------------"
i = 0
until i >= 10 do 
  puts "i is #{i}"
  i += 1
end

puts "-----------------------------------"
for i in 1..5  #inclusive
  puts "#{i} zombies are attacking"
end

for i in 1...5  #exclusive
  puts "#{i} zombies are attacking"
end

puts "-----------------------------------"

5.times do
  puts "Hello world"
end

5.times do |number|
  puts "Hello world #{number}"
end

puts "-----------------------------------"

5.upto(10) do |i|
  puts i
end

10.downto(5) do |i|
  puts i
end