=begin
 
I: Array 
O: nil

Problem

- iterate through an array. whenever it comes across consecutive elements with the same value, it should yield both of these to a block.
- method should return nil

Logic

- set counter at 1
- set previous_element to array[0]
- use while loop
  - if array[counter] equals previous_element, yield both to a block
  - increment counter
  - set previous element to array[counter]
- return nil

=end

# Code

def each_cons(array)
  counter = 1
  previous_element = array[0]
  while counter < array.size
    yield(previous_element, array[counter])
    previous_element = array[counter]
    counter += 1
  end
end

# Tests

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end

result == nil
puts hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([]) do |value1, value2|
  hash[value1] = value2
end
puts hash == {}

hash = {}
each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
puts hash == {'a' => 'b'}
