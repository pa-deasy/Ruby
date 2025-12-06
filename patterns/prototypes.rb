class Prototype
  def clone
    raise NotImplementedError
  end
end

class Car < Prototype
  def initialize(make, model, year, color)
    @make = make
    @model = model
    @year = year
    @color = color
  end

  def details
    puts "Car Make: #{@make}, Model: #{@model}, Year: #{@year}, Color: #{@color}"
  end

  def clone
    Car.new(@make, @model, @year, @color)
  end
end

car = Car.new('Jeep', 'Compass', 2013, 'White')
car.details
cloned_car = car.clone
cloned_car.details