class Cat
  attr_reader :name

  @@total = 0

  def self.generic_greeting
    puts "Hello. Cat."
  end

  def personal_greeting
    puts "Hello. #{name}"
  end

  def initialize(name)
    @@total += 1
    @name = name
  end

  def self.total
    @@total
  end

end

kitty1 = Cat.new("Ham")
kitty2 = Cat.new("Jazz")

puts Cat.total