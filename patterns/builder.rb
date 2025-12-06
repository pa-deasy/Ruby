# Product
class Car
  attr_accessor :wheels, :engine, :color, :gps

  def initialize(wheels, engine, color, gps)
    @wheels = wheels
    @engine = engine
    @color = color
    @gps = gps
  end
end


# Builder
class CarBuilder
  def initialize
    @wheels = "4"
    @engine = "V6"
    @color = "white"
    @gps = false
  end

  def set_wheels(wheels)
    @wheels = wheels
    self
  end

  def set_engine(engine)
    @engine = engine
    self
  end

  def set_color(color)
    @color = color
    self
  end

  def set_gps(gps)
    @gps = gps
    self
  end

  def build
    Car.new(@wheels, @engine, @color, @gps)
  end
end


# Director
class CarDirector
  def initialize(builder)
    @builder = builder
  end

  def construct_sedan
    @builder.set_wheels("4").set_engine("V6").set_color("black").set_gps(true).build
  end

  def construct_suv
    @builder.set_wheels("4").set_engine("V8").set_color("blue").set_gps(false).build
  end
end


# Client
director = CarDirector.new(CarBuilder.new)
sedan = director.construct_sedan
p "Sedan: #{sedan.inspect}"
suv = director.construct_suv
p "SUV: #{suv.inspect}"

