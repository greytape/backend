=begin

Problem

input: two arguments, one to initialise new instance of 'sumofmultiples' class, one for the .upto method. First will consist of several integers (no limit, though all must be lower than argument passed to .upto method), second will be just one integer 
output: integer

- when given a set of integers and another integer, find the sum of all the multiples from 1 from to the final integer. If no multiple numbers passed in, use 3 and 5 as multiples

Logic

- save 'upto' number as a ivar
- save 'multiple' numbers in an array as an ivar 
  - use splat operator, but if no arguments received (Array#empty?) use [3,5]
- create array of numbers from 1 to 'upto' number (Fixnum#upto)
- select numbers (Array#select) that are multiples of the multiple numbers
  - within block passed to #select method, iterate through @mutiples array (Array#each)
- sum the resulting array (Array#reduce)

=end

# Code



class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def self.to(limit_num)
    one_to_limit = (0...limit_num).to_a
    one_to_limit.select! do |num|
      selected = false
      [3, 5].each do |multiple|
        selected = true if num % multiple == 0
      end
      selected
    end
    one_to_limit = [0] if one_to_limit == []
    one_to_limit.reduce(:+)
  end

  def to(limit_num)
    one_to_limit = (0...limit_num).to_a
    one_to_limit.select! do |num|
      selected = false
      @multiples.each do |multiple|
        selected = true if num % multiple == 0
      end
      selected
    end
    one_to_limit = [0] if one_to_limit == []
    one_to_limit.reduce(:+)
  end
end

# Tests

require 'minitest/autorun'

class SumTest < Minitest::Test
  def test_sum_to_1
    assert_equal 0, SumOfMultiples.to(1)
  end

  def test_sum_to_3
    assert_equal 3, SumOfMultiples.to(4)
  end

  def test_sum_to_10
    assert_equal 23, SumOfMultiples.to(10)
  end

  def test_sum_to_100
    assert_equal 2_318, SumOfMultiples.to(100)
  end

  def test_sum_to_1000
    assert_equal 233_168, SumOfMultiples.to(1000)
  end

  def test_configurable_7_13_17_to_20
    assert_equal 51, SumOfMultiples.new(7, 13, 17).to(20)
  end

  def test_configurable_4_6_to_15
    assert_equal 30, SumOfMultiples.new(4, 6).to(15)
  end

  def test_configurable_5_6_8_to_150
    assert_equal 4419, SumOfMultiples.new(5, 6, 8).to(150)
  end

  def test_configurable_43_47_to_10000
    assert_equal 2_203_160, SumOfMultiples.new(43, 47).to(10_000)
  end
end

