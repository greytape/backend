=begin

Problem

- create custom version of Enumerable#any? method
- method should be called on an array. It should take a block, pass each element of calling object to block.
- if any of the return values of the block is true, then the method should return true. If not, it should return false.
- method should stop processing once a block has returned true.

Logic

- iterate through elements of array with Array#each
- pass element into block with yield
- if result of block is true, return true
- else return false

=end


# Code
def any?(array)
  array.each do |element|
    return true if yield(element) == true
  end
  false
end


# # Tests

puts any?([1, 3, 5, 6]) { |value| value.even? } == true
puts any?([1, 3, 5, 7]) { |value| value.even? } == false
puts any?([2, 4, 6, 8]) { |value| value.odd? } == false
puts any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts any?([1, 3, 5, 7]) { |value| true } == true
puts any?([1, 3, 5, 7]) { |value| false } == false
puts any?([]) { |value| true } == false
