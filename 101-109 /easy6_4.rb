# # I/O

# input: array
# output: (same) array

# # Logic

# - take the last element and put it at the start of the array
# - do this the number of times that the array is long
# - 

# # Methods

# array#size
# array#prepend
# array#slice!

# # Code

require 'pry'

def versre!(arr)
  count = (arr.size - 1)
  count.times.with_index do |i|
    arr.insert(i, (arr.slice!(-1)))
  end 
  arr
end


# Tests

list = [1,2,3,4]

result = versre!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
versre!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]
 
list = ['abc']
versre!(list) # => ["abc"]
puts list == ["abc"]
 
list = []
versre!(list) # => []
puts list == []