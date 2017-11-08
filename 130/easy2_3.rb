=begin 

Problem

I: array
O: array

- iterate through array, passing each element to block
- output of block should populate new array, to be returned by method

Logic

- initialize empty array
- iterate through array with Array#each, yielding each element to block, add return value to new array (Array#<<)
- return new array

=end

#Code

def map(array)
  mapped_array = []
  array.each { |element| mapped_array << yield(element) }
  mapped_array
end

#Tests

puts map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
puts map([]) { |value| true } == []
puts map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false,  false]
puts map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
puts map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]