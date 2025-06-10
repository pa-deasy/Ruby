module Speak
  def speak(sound)
    puts sound
  end
end


class GoodDog
  include Speak
  def initialize(name)
    puts "This object was initialized"
    @name = name
  end
end


class HumanBeing
  include Speak
end


sparky = GoodDog.new("Sparky")
sparky.speak("Arf!")
p "--- GoodDog ancestors ---"
p GoodDog.ancestors

puts ""

bob = HumanBeing.new
bob.speak("Hello!")
p "--- HumanBeing ancestors ---"
p HumanBeing.ancestors


puts "--------------------------------"


module Swimmable
  def swim
    "I'm swimming"
  end
end

class Animal
end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable
end

sparky = Dog.new
neemo = Fish.new
paws = Cat.new

p sparky.swim
p neemo.swim
# p paws.swim  NoMethodError: undefined method `swim'


puts "--------------------------------"


module Conversions
  def self.farenheit_to_celsium(num)
    (num - 32) * 5 / 9
  end
end

p Conversions.farenheit_to_celsium(32)