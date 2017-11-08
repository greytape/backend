=begin 

Problem

I: array, block
O: fixnum

- method should take array and block, return the number of times that an element passed to the array returns true.

Logic

- set counter at 0
- iterate through array with each
- increment counter if element yielded to block returns true
- return counter

=end

#Code

def count(array)
  counter = 0
  array.each { |element| counter += 1 if yield(element) }
  counter
end

#Tests

puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2