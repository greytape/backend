=begin

Problem

I: fixnum
O: various

- Take a number. Counting from the rightmost digit, double the value of every second digit. if the resulting number is above 9, subtract 9 from the result.
- then add all the numbers together.
- Take the remainder of the result, and check whether it is 0 or not. If it is, then this is a valid number. 

Program will need four methods
- addends - converts a number to an array of integers to be added together
- checksum - adds the addends result together 
- valid? - tests to see if checksum % 10 == 0
- create - returns the original number with an additional digit that results in a valid number

Logic

addends - split number into array of digits . iterate through array, doubling every second number, starting from rightmost digit.
- return integer (Array#to_i) 
checksum - split addends result (Fixnum#to_s, String#chars) and sum , (Array#map, Array#reduce). Return result.
valid? - checksum % 10 == O?
create - initialise counter at 0.
- add counter to the end of original input number. check to see if valid? If so, return otherwise increment counter and try again.

=end

# Code

require 'pry'

class Luhn
  def initialize(number)
    @number = number
    @addends_array = addends
    @checksum = checksum
    @valid = valid?
  end

  def addends
    array = @number.to_s.chars.map(&:to_i)
    array = array.reverse.map.with_index do |digit, index|
      if index.odd? 
        digit *= 2
        digit > 9 ? digit - 9 : digit
      else 
        digit
      end
    end
    array.reverse
  end

  def checksum
    @addends_array.reduce(:+)
  end

  def valid?
    @checksum % 10 == 0
  end

  def self.create(number)
    counter = 0
    loop do
      new_number = (number.to_s << counter.to_s).to_i
      test_number = Luhn.new(new_number)
      if test_number.valid?
        return new_number
      end
      counter += 1
    end
  end

end


# Tests

require 'minitest/autorun'

class LuhnTest < Minitest::Test
  def test_addends
    luhn = Luhn.new(12_121)
    assert_equal [1, 4, 1, 4, 1], luhn.addends
  end

  def test_too_large_addend
    luhn = Luhn.new(8631)
    assert_equal [7, 6, 6, 1], luhn.addends
  end

  def test_checksum
    luhn = Luhn.new(4913)
    assert_equal 22, luhn.checksum
  end

  def test_checksum_again
    luhn = Luhn.new(201_773)
    assert_equal 21, luhn.checksum
  end

  def test_invalid_number
    luhn = Luhn.new(738)
    refute luhn.valid?
  end

  def test_valid_number
    luhn = Luhn.new(8_739_567)
    assert luhn.valid?
  end

  def test_create_valid_number
    number = Luhn.create(123)
    assert_equal 1230, number
  end

  def test_create_other_valid_number
    number = Luhn.create(873_956)
    assert_equal 8_739_567, number
  end

  def test_create_yet_another_valid_number
    number = Luhn.create(837_263_756)
    assert_equal 8_372_637_564, number
  end
end