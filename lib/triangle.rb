class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)} 
  end
end
