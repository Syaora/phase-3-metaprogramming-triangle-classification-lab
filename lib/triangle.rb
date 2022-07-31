class Triangle
  # write code here
  class TriangleError < StandardError
    def message
      "Not a triangle"
    end
  end

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if (!self.isTriangle)
      raise TriangleError
    elsif (self.one == self.two && self.one == self.three)
      :equilateral
    elsif (self.one == self.two || self.one == self.three || self.two == self.three)
      :isosceles
    else
      :scalene
    end
  end

  private

  def isTriangle
    if ((self.one + self.two) <= self.three)
      false
    elsif ((self.one + self.three) <= self.two)
      false
    elsif ((self.two + self.three) <= self.one)
      false
    else
      true
    end
  end
end
