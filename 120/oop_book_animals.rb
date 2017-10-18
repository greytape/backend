module Walkable 
  def walk
    "I'm walking"
  end
end

module Swimmable 
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak 
    "Hello."
  end
end

# class GoodDog < Animal
#   attr_accessor :name
#   include Swimmable
#   include Climbable

#   def initialize(n)
#     self.name = n
#   end

#   def speak
#     super + "and from GoodDog class"
#   end

# end

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end


  class Cat 
    def say_name(name)
      p "#{name}" 
    end
  end

  def some_out_of_place_method(num)
    num ** 2
  end
end

# sparky = GoodDog.new('Barkron')
# paws = Cat.new

# puts sparky.speak
# puts paws.speak

# fido = Animal.new
# puts fido.swim

# puts "---Animal method lookup---"
# puts GoodDog.ancestors

# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new

# buddy.speak('Arf!')
# kitty.say_name('kitty')

value = Mammal::some_out_of_place_method(4)
