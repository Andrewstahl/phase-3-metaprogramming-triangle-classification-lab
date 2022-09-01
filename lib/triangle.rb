class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    
    if (
      (side_1.positive? && side_2.positive? && side_3.positive?) && 
      (side_1 + side_2 > side_3) && 
      (side_1 + side_3 > side_2) && 
      (side_2 + side_3 > side_1) 
    )
      # check the cases for the unique sides of a triangle
      case [side_1, side_2, side_3].uniq.count
      # If there's three unique values in the array, that means they're all different lengths
      when 3
        :scalene
        # If there's two unique values in the array, that means two of them are the same
      when 2
        :isosceles
      # If there's one unique values in the array, that means all of them are the same
      when 1
        :equilateral
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
