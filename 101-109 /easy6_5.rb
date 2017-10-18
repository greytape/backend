# # I/O

# input: array
# output: (new) array

# # Logic

# - iterate through the elements of the array in reverse order
# - add each element to a new array 
# - return new array

# # Methods

# array#size
# enumerator#with_index
# array#[]
# array#<<

# # Code

def reverse(arr)
  new_array = []
  count = arr.size
  count.times.with_index do |i|
    new_array << arr[(-i -1)]
  end
  new_array
end

# Tests

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]                 # => true