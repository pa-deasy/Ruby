my_lambda = lambda { puts 'my lambda' }
my_lambda.call

my_other_lambda = -> { puts 'my other lambda' }
my_other_lambda.call

puts '---------------------'

my_name = -> (name) { puts "Hello #{name}" }

my_age = lambda { |age| puts "I am #{age} years old"}

my_name.call('Patrick')

my_age.call(36)
