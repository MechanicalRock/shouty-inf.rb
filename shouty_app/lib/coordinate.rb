class Coordinate
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x.to_i
    @y = y.to_i
  end

  def distance_from(other)
    dx=other.x - @x
    dy=other.y - @y
    Math.sqrt( (dx * dx) + (dy*dy) )
  end
end
