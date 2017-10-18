
module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog

  DOG_YEARS = 7

  @@number_of_dogs = 0


  attr_accessor :name, :height, :weight, :age
  def initialize(name, years)
    @@number_of_dogs += 1
    self.name = name
    self.age = years * DOG_YEARS
    # @height = height
    # @weight = weight
  end 

  def self.total_number_of_dogs
    @@number_of_dogs
  end


  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name}'s height is #{self.height}, his weight is #{self.weight}."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

end

# puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new("Percival", 6)
dog2 = GoodDog.new("Milton", 8)

# puts GoodDog.total_number_of_dogs

p dog1

# class HumanBeing
#   include Speak
# end



# sparky = GoodDog.new("Sparky", "30cm", "10kg")
# puts sparky.info

# fido = GoodDog.new("Fido", "40cm", "20kg")
# puts fido.info


