class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2 
    @side3 = side3 
  end

  def kind
    if self.valid?
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side1 == @side3 || @side3 == @side2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def valid?
    requirements = [(@side1 + @side2 > @side3), (@side2 + @side3 > @side1), (@side1 + @side3 > @side2)]
    sides = [@side1, @side2, @side3]
    sides.each do |side|
      requirements << (side >= 0)
    end
    requirements.all?(true)
  end
        






  class TriangleError < StandardError
  end

end
