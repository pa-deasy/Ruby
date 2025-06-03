require 'pry-byebug'


def isogram?(string)
  original_length = string.length
  p original_length
  string_array = string.downcase.split('')

  # binding.pry

  unique_length = string_array.uniq.length
  p unique_length
  original_length == unique_length
end

p isogram?("Odin")