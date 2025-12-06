SHAPES = [:circle, :square, :rectangle].freeze

class Shape
  def draw
    raise NotImplementedError, "This method should be overridden in subclasses"
  end
end

class Circle < Shape
  def draw
    puts "Drawing a Circle"
  end
end

class Square < Shape
  def draw
    puts "Drawing a Square"
  end
end

class Rectangle < Shape
  def draw
    puts "Drawing a Rectangle"
  end
end

class ShapeFactory
  def create_shape(shape_type)
    case shape_type
    when :circle
      Circle.new
    when :square
      Square.new
    when :rectangle
      Rectangle.new
    else
      raise "Unknown shape type: #{shape_type}"
    end
  end
end

factory = ShapeFactory.new
p factory.create_shape(:circle).draw
p factory.create_shape(:square).draw
p factory.create_shape(:rectangle).draw