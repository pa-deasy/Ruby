require 'pry-byebug'


def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSUP, #{name}!"
  puts greeting
end

p yell_greeting("bob")