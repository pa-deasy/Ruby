def even_odd(number)
  unless number.is_a? Numeric
    return "#{number} is not a number"
  end

  if number % 2 == 0
    "#{number} is an even number"
  else
    "#{number} is an odd number"
  end
end

p even_odd(1)
p even_odd(2)
p even_odd("one")