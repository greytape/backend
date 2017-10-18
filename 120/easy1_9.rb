class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  attr_reader :name, :age, :colour

  def initialize(name, age, colour)
    @colour = colour
    super(name, age)
  end

  def to_s
    "My cat #{name} is #{age} years old and has #{colour} fur."
  end

end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch

samwell = Cat.lowercase('hobs', 28, 'red')
puts samwell