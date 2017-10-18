# # I/O

# input: array
# output: array

# # Logic

# - initialise a new array
# - iterate through input array
# - at each iteration, take the second value of the nested array (Y)
# - add the first value of the nested array to the new array 'Y' times
# - return new array

# # Methods

# array#each
# array#[]
# array#<<

# # Code

def buy_fruit(arr1)
  new_arr = []
  arr1.each do |e|
    e[-1].times { new_arr << e[0] }
  end
  new_arr
end

# Tests

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]