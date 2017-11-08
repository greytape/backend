=begin

Problem

I: Array
O: Nil

- as problem before, but rather than taking two consecutive digits, method should take any number of consecutive digits, with this number passed into the method as an argument.

Logic

- use a counter to iterate through the array, with a slice (Array#slice) of the array yielded to a block. The slice should be defined as (counter, counter + number_of_cons_digits) 
- Slice returns an array, use the * operator to split this into separate arguments.
- in defining the parameters for the block, again use the * operator for arguments beyond the first one

=end

# Code

def each_cons(array, num_cons_digits)
  counter = 0
  while counter <= (array.size - num_cons_digits)
    yield(*array.slice(counter, num_cons_digits))
    counter += 1
  end
end

# Tests

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
puts hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
puts hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
puts hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
puts hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
puts hash == {}