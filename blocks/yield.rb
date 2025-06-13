def logger
  yield
end

logger { puts 'hello from the block' }

logger do 
  p [1, 2, 3]
end

puts '----------------'

def double_vision
  yield
  yield
end

double_vision { puts 'How many fingers am I holding up?'}

puts '---------------------'

def love_language
  yield('Ruby')
  yield('Rails')
end

love_language { |lang| puts "I love #{lang}"}

puts '---------------------'

@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  @transactions.each do |transaction|
    yield transaction
  end
end

transaction_statement do |transaction|
  p "%0.2f" % transaction
end

puts '---------------------'

def mad_libs
  yield('cool', 'beans', 'burrito')  # 3 arguments are passed to yield
end

mad_libs do |adjective, noun|  # But the block only takes 2 parameters
  puts "I said #{adjective}, #{noun}"
end