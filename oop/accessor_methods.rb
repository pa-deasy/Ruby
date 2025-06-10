class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(name, height, weight)
    self.name = name
    self.height = height
    self.weight = weight
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(name, height, weight)
    self.name = name
    self.height = height
    self.weight = weight
  end

  def info
    "#{self.name} weights #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
p sparky.speak
p sparky.name
p sparky.info

sparky.change_info("Spartacus", "24 inches", "45 lbs")
p sparky.info

p sparky.what_is_self