class Person

  attr_accessor :first_name, :last_name

  def initialize(name)
    parse_full_name(name)
  end

  def name
    "#{first_name} #{last_name}"
  end

  def name=(name)
    parse_full_name(name)
  end

  private

  def parse_full_name(name)
    @first_name = name.split[0]
    @last_name = name.split.length > 1 ? name.split[-1] : ''
  end
end

bob = Person.new('Robert')
# puts bob.name                  # => 'Robert'
# puts bob.first_name            # => 'Robert'
# puts bob.last_name             # => ''
# bob.last_name = 'Smith'
# puts bob.name                  # => 'Robert Smith'

# bob.name = "John Adams"
# puts bob.first_name            # => 'John'
# puts bob.last_name             # => 'Adams'

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')
puts "The persons name is #{bob.name}"