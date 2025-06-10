class Animal
  def speak
    "Hello!"
  end
end


class GoodDog < Animal
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def speak
    "#{self.name} says arf!"
  end
end


class Cat < Animal
end


class Bunny < Animal
  def speak
    super + " from Bunny class"
  end
end

sparky = GoodDog.new("Sparky")
p sparky.speak
paws = Cat.new
p paws.speak
floppy = Bunny.new
p floppy.speak