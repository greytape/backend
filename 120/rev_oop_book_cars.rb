module Loadable
  def lower_ramp
    puts "The ramp has been lowered."
  end
end



class Vehicle

  attr_accessor :speed, :colour
  attr_reader :year, :model

  @@number_of_vehicles = 0

  def age
    calculate_age
  end

  def initialize(year, colour, model)
    @year = year
    @colour = colour
    @model = model
    @speed = 0
    @@number_of_vehicles += 1
  end

  def number_of_vehicles
    @@number_of_vehicles
  end

  def self.calculate_gas_mileage(litres, km)
    litres * km_per_litre
  end

  def speed_up
    self.speed += 10
    puts "The car speeds up. You are now travelling at #{speed} mph."
  end

  def brake
    self.speed -= 10
    puts "The car slows down. You are now travelling at #{speed} mph."
  end

  def shut_off
    self.speed = 0
    puts "The engine shudders to a halt."
  end

  def spray_paint(colour)
    self.colour = colour
  end

  def to_s
    "This is a #{colour} #{model}, produced in #{year}."
  end

  private

  def calculate_age
    Time.now.year - year 
  end

end

class MyCar < Vehicle

  WHEELS = 4

end

class MyTruck < Vehicle

  include Loadable

  WHEELS = 6

end

honda = MyCar.new(1983, 'pink', 'honda civic')

puts honda.age
