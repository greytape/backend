# # I/O

# input: array, integer or nil
# output: boolean

# # Logic

# - repurpose find_dup method from easy6_8.rb
# - create hash with every element of array
# - then check that hash to see if it contains our test value as a key
# - if so return true, else false

# # Methods

# array#each 
# hash#has_key?

# # Code

def include?(arr, test)
  hsh = Hash.new(0)
  arr.each { |e| hsh[e] += 1}
  hsh.has_key?(test)
end

# Tests

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false