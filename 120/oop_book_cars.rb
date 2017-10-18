# *** CARS ***
module Childlock
  def lock_back_doors(num)
    num
  end
end

class Vehicle

  @@number_of_vehicles = 0

  attr_accessor :color
  attr_reader :model, :year
  
  def initialize(year, model, color)
    @@number_of_vehicles += 1
    @year = year
    @color = color
    @model = model  
    @current_speed = 0
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def spray_paint(new_color)
    self.color = new_color
  end

  def self.what_is_fuel_efficiency(litres, km)
    puts "#{litres.to_f / km.to_f} km per litre of petrol."
  end

  def speed_up(increase)
    @current_speed += increase
    puts "You push the gas and accelerate #{increase} km/h"
  end

  def slow_down(decrease)
    @current_speed -= decrease
    puts "You push the gas and deccelerate #{decrease} km/h"
  end

  def current_speed
    puts "You are currently going at #{@current_speed} km/h"
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy"
  end

  def age
    puts "This vehicle is #{vehicle_years} years old."
  end

  private

  def vehicle_years
    Time.now.year - year
  end

end

class MyTruck < Vehicle

  CARRIES = "Freight"

  def to_s
    puts "This car is called a #{model}, it is #{color} and was made in #{year}"
  end

end

class MyCar < Vehicle

  CARRIES = "Passengers"
  include Childlock
  
  def to_s
    puts "This car is called a #{model}, it is #{color} and was made in #{year}"
  end

end

lumina = MyCar.new(1997, 'chevy lumina', 'white')

lumina.spray_paint("ruby")

puts lumina.color

MyCar.what_is_fuel_efficiency(100, 500)

puts lumina

# puts MyCar.ancestors

puts lumina.age
