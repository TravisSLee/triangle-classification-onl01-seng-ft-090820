class Triangle
  # write code here
  attr_accessor :length 
  
  def initialize(length, length, length)
    attributes.each {|key, value| self.send(("#{key}="), value)} 
  end
end
