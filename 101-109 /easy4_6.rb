# Approach

# - need to iterate through the array
# - could generate subsequences using each_index
# - then add them with inject(:+), then add to new_array

# Code

def running_total(arr)
  new_arr = []
  arr.each_index do |i|
    new_arr << arr[0..i].reduce(:+)
  end
  new_arr
end

# Tests

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []