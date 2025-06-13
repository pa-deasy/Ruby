def simple_method
  yield
end

# simple_method  `simple_method': no block given (yield) (LocalJumpError)

puts '---------------------'

def maybe_block
  if block_given?
    puts 'Block party'
  end
  puts 'Executed regardless'
end

maybe_block

maybe_block {}