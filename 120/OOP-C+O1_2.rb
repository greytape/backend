module Walkable
  def walk
    puts "Let's go for a walk."
  end
end

class Cat
  
  include Walkable

  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "I'm a #{name}."
  end

end

kitty = Cat.new('Sophie')

kitty.name = "Luna"

kitty.walk