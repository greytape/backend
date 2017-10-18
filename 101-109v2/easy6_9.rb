# # Problem

# - method that takes two arguments, array and other value
# - returns true if second argument is found in array
# - false if not 

# # Logic

# - iterate through array
# - if element equals second argument, return true

# # Methods

# array#each

# Code

def include?(array, test)
  return false if array.length == 0
  array.each { |e| return true if e == test }
  false
end

# Tests
p include?([0,1,2,3,4,5], "3") == false
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false