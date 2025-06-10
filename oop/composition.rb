class Engine
  def start
    puts "Engine starting..."
  end
end

class Car
  def initialize
    @engine = Engine.new
  end

  def start
    @engine.start
  end
end

my_car = Car.new
my_car.start


puts "---------------------------"

class Passenger
end

class Bus
  def initialize(passengers)
    @passengers = passengers
  end

  def number_of_passengers
    @passengers.length
  end
end

passengers = [Passenger.new, Passenger.new]
my_bus = Bus.new(passengers)
p my_bus.number_of_passengers
    