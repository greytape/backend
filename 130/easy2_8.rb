=begin

Problem

I: array, block
O: integer

- iterate through array, passing each element to a block. Method should return the element for which the block returned the largest value.

Logic

- set largest_return_value to 0
- set largest_element to nil
- iterate though array (Array#each), passing each element to block
- compare return value of block to largest_return_value. If return value is larger, set largest_element to  current element. 
- return largest_element

=end

# Code

def max_by(array)
  return nil if array.size == 0
  largest_return_value = yield(array[0])
  largest_element = array[0]
  array.each do |element|
    if largest_return_value < yield(element)
      largest_return_value = yield(element)
      largest_element = element
    end
  end
  largest_element
end

# Test

puts max_by([1, 5, 3]) { |value| value + 2 } == 5
puts max_by([3, 5, 1]) { |value| 9 - value } == 1
puts max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
puts max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
puts max_by([-7]) { |value| value * 3 } == -7
puts max_by([]) { |value| value + 5 } == nil