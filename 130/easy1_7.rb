=begin

Problem

- take an array as an argument
- the method should also take a block
- the method should pass each element of the array into the block
- if any of the blocks return false, the method should return false immediately
- otherwise it should return true

Logic

- iterate through each element of the array (Array#each)
- pass each element into a block with yield
- method should return false if that element is false 
- else return true

=end

# Code

def all?(array)
  array.each { |element| return false unless yield(element) }
  true
end

# Test

puts all?([1, 3, 5, 6]) { |value| value.odd? } == false
puts all?([1, 3, 5, 7]) { |value| value.odd? } == true
puts all?([2, 4, 6, 8]) { |value| value.even? } == true
puts all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
puts all?([1, 3, 5, 7]) { |value| true } == true
puts all?([1, 3, 5, 7]) { |value| false } == false
puts all?([]) { |value| false } == true