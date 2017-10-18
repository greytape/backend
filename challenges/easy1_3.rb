=begin

Problem

- input: string of integer
- output: integer
- requires new class Octal, with method to decimal
- convert octal string into decimal integer.
- treat invalid input as string 0

Logic

- split string into array of integers (String#chars, Array#map, String#to_i)
- reverse array so that index of number equates to relevant exponent that needs to be summed (ie n*8^idx)
- map array with index, then reduce (Array#map, Enumerator#with_index,  Array#reduce)

=end

# Code

require 'pry'

class Octal
  def initialize(octal_number)
    if octal_number =~ /[8-9a-zA-Z]/
      @digits = [0]  
    else
      @digits = octal_number.chars.map(&:to_i).reverse  
    end
  end

  def to_decimal
    @digits.map!.with_index {|digit, index| digit * (8 ** index) }
    @digits.reduce(:+)
  end
end

# # Tests
  
require 'minitest/autorun'

class OctalTest < Minitest::Test
  def test_octal_1_is_decimal_1
    assert_equal 1, Octal.new('1').to_decimal
  end

  def test_octal_10_is_decimal_8
    assert_equal 8, Octal.new('10').to_decimal
  end

  def test_octal_17_is_decimal_15
    assert_equal 15, Octal.new('17').to_decimal
  end

  def test_octal_11_is_decimal_9
    assert_equal 9, Octal.new('11').to_decimal
  end

  def test_octal_130_is_decimal_88
    assert_equal 88, Octal.new('130').to_decimal
  end

  def test_octal_2047_is_decimal_1063
    assert_equal 1063, Octal.new('2047').to_decimal
  end

  def test_octal_7777_is_decimal_4095
    assert_equal 4095, Octal.new('7777').to_decimal
  end

  def test_octal_1234567_is_decimal_342391
    assert_equal 342_391, Octal.new('1234567').to_decimal
  end

  def test_invalid_octal_is_decimal_0
    assert_equal 0, Octal.new('carrot').to_decimal
  end

  def test_8_is_seen_as_invalid_and_returns_0
    assert_equal 0, Octal.new('8').to_decimal
  end

  def test_9_is_seen_as_invalid_and_returns_0
    assert_equal 0, Octal.new('9').to_decimal
  end

  def test_6789_is_seen_as_invalid_and_returns_0
    assert_equal 0, Octal.new('6789').to_decimal
  end

  def test_abc1z_is_seen_as_invalid_and_returns_0
    assert_equal 0, Octal.new('abc1z').to_decimal
  end

  def test_valid_octal_formatted_string_011_is_decimal_9
    assert_equal 9, Octal.new('011').to_decimal
  end
end