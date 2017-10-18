class Cat
  attr_reader :name

  def self.generic_greeting
    puts "Hello. Cat."
  end

  def personal_greeting
    puts "Hello. #{name}"
  end

  def initialize(name)
    @name = name
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting