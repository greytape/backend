=begin

Problem

I: long list of arguments
O: integer

- array should take long list of arguments and a block, and return a number indicating the number of arguments that once passed into the block evaluated true.


Logic

- use splat operator (*) so that all arguments are put into an array.
- initialise coutner at 0
- iterate through array, passing each element to block and incrementing counter by 1 with each block that returns true

=end

# Code

def count(*args)
  counter = 0
  args.each { |arg| counter += 1 if yield(arg)}
  counter
end

# Tests

puts count(1, 3, 6) { |value| value.odd? } == 2
puts count(1, 3, 6) { |value| value.even? } == 1
puts count(1, 3, 6) { |value| value > 6 } == 0
puts count(1, 3, 6) { |value| true } == 3
puts count() { |value| true } == 0
puts count(1, 3, 6) { |value| value - 6 } == 3