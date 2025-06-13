a_proc = Proc.new { puts "This is a proc" }

a_proc.call

b_proc = proc { puts "This is also a proc" }

b_proc.call

puts '---------------------'

a_proc = Proc.new { |name, age| puts "Name: #{name}, Age: #{age}"}
a_proc.call('Patrick', 36)