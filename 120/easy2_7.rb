require 'pry'

class Shelter
  attr_accessor :adoptions

  def initialize
    @adoptions = {}
  end

  def print_adoptions
    @adoptions.each do |owner, pet_array|
      puts "#{owner.name} has adopted the following pets."
      pet_array.each {|pet| puts "a #{pet.type} called #{pet.name}."}
      puts ""
    end
  end

  def adopt(owner, pet)
    if @adoptions[owner]
      @adoptions[owner] << pet
    else
      @adoptions[owner] = [pet]
    end
    owner.number_of_pets += 1
  end
end

class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @name = name
    @type = type
  end
end

class Owner
  attr_accessor :name, :number_of_pets

  def initialize(name)
    @name = name
    @number_of_pets = 0
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."