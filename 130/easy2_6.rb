=begin

Problem

I: Array
O: (original) Array

- method should iterate through an array, passing each element to a block, along with the index of that element.

Logic

- setup counter at 0
- use a while loop to iterate through the array, 
  - with each loop, increment the counter by one, passing each element and the counter to a block
- return original array

=end

# Code

def each_with_index(array)
  counter = 0
  while counter < array.size
    yield(array[counter], counter)
    counter += 1
  end
  array
end

# Tests

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
