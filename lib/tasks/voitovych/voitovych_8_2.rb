puts "This program takes in a Circle object and calculates the area of that circle."

class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end
end

class Circle
  attr_accessor :center, :radius

  def initialize(center, radius)
    @center = center
    @radius = radius
  end
end

def circle_area(circle)
  Math::PI * circle.radius**2
end

puts "Circle.new(Point.new(10, 10), 30) => #{circle_area(Circle.new(Point.new(10, 10), 30))}"
