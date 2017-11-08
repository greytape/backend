=begin

Problem

I: array
O: 

- iterate through an array, passing each element to a block. The first block that returns false/nil, return an array comprising all elements from the 'falsey' element to the end

Logic

- iterate through array with (Array#each_with_index), yielding each element to block
- if return value of block is falsey, use index to return a subset of original (Array#slice)

=end

# Code

def drop_while(array)
  array.each_with_index do |element, index|
    return array.slice(index..-1) unless yield(element)
  end
  []
end

# Tests

puts drop_while([1, 3, 5, 6]) { |value| value.odd? } f== [6]
puts drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
puts drop_while([1, 3, 5, 6]) { |value| true } == []
puts drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
puts drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
puts drop_while([]) { |value| true } == []