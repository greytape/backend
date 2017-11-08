=begin

Problem

I: array, block
O: boolean

- method should take an array and a block and return whether or not only one of the elements when passed into the block returns true in the array 

Logic

- setup counter at 0
- iterate through array with each
- increment counter by one if block returns true
- at end see whether counter == 1 

=end

# Code

def one?(array)
  counter = 0
  array.each do |element| 
    counter += 1 if yield(element)
    return false if counter >= 2
  end
  counter == 1
end

# Tests

puts one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
puts one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
puts one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
puts one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
puts one?([1, 3, 5, 7]) { |value| true }           # -> false
puts one?([1, 3, 5, 7]) { |value| false }          # -> false
puts one?([]) { |value| true }                     # -> false