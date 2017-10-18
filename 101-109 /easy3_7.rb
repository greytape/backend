# Approach

# - only return the odd positions of entered arrays in a new array
# - could do each_with_index
# - add value at index position to an array if index integer#is_odd?

# Code

def oddities(arr)
  new_arr = []
  arr.each_with_index do |val, index|
    new_arr << val if index.even?
  end
  new_arr
end

#Tests

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []