=begin

Problem

I: 3 integers
O: nil

- method should take three integers, a start, end and a step.
- it should use these to generate a number of integers which should then be passed into a block

Logic

- build array using input integers. In while loop, increment counter  by step value and add to empty array (Array#<<). While loop should end when counter is >= max value.
- then pass each element of new array to block with yield.

=end

# Code

def step(min, max, step)
  counter = min
  stepped_nums = []
  while counter <= max
    stepped_nums << counter
    counter += step
  end
  stepped_nums.each { |num| yield num }
end

# Tests

step(1, 10, 3) { |value| puts "value = #{value}" }