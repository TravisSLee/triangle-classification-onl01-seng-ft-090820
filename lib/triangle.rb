class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)} 
  end
  
  def kind()
    if (@length1 <= 0) || (@length2 <= 0) || (@length3 <= 0)
      raise TriangleError
    elsif (@length1 + @length2 <= @side_3) || (@length1 + @length2 <= @side_2) || (@length2 + @length3 <= @length1)
      raise TriangleError
    else
      if (@length1 == @length2) && (@length2 == @length3)
        :equilateral
      elsif (@length1 == @length2) || (@length2 == @length3) || (@length1 == @length3)
        :isosceles
      elsif (@length1 != @length2) && (@length2 != @sidlength3e_3) && (@length1 != @length3)
        :scalene
      end
    end

  end
  
  class TriangleError < StandardError
  end
end
