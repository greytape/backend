=begin

Classes
Employee

Full-time Employee
Part-time employees

Regular Employee
Executive
Manager

Methods
- delegate
- to_s
- take vacation

Module
- delegatable

ivars
- name
- serial_number
- days_of_holiday
- desk
- type

=end

module Delegatable
  COMPANY_NAME = 'aldi'

  @@number_of_delegations = 3

  def delegate
    #code omitted
  end

end

class Employee
  attr_reader :name, :serial_number, :type, :vacation_days, :desk

  def initialize(name, serial_number)
    @name = name
    @type = self.class
    @serial_number = serial_number
  end

  def to_s
    %(
      Name: #{name}
      Type: #{type}
      Serial number: #{serial_number}
      Vacation days: #{vacation_days}
      Desk: #{desk}
    )
  end
end

class FullTimeEmployee < Employee
  include Delegatable

  def take_vacation
    #code omitted
  end

  def self.delegate
    @@number_of_delegations
  end
end

class PartTimeEmployee < Employee
  def initialize(name, serial_number)
    super
    @vacation_days = 0
    @desk = "open"
  end
end

class Executive < FullTimeEmployee
  include Delegatable

  def initialize(name, serial_number)
    super
    @vacation_days = 20
    @desk = "corner Office"
  end
end

class Manager < FullTimeEmployee
  attr_reader :company, :delegations
  include Delegatable

  def initialize(name, serial_number)
    super
    @vacation_days = 14
    @desk = "private Office"
    @company = COMPANY_NAME
    @delegations = @@number_of_delegations
  end
end

class RegularEmployee < FullTimeEmployee
  def initialize(name, serial_number)
    super
    @vacation_days = 10
    @desk = "cubicle"
  end
end

sally = Manager.new("Sally Bishop", 7659472)
# puts sally.delegations
puts Manager.delegate

