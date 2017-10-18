class Person

  attr_accessor :first_name, :last_name

  def initialize(name)
    @first_name = name
  end

  def name
    "#{first_name} #{last_name}"
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
puts bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'