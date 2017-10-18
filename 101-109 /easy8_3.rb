# # I/O

# input: string
# output: array

# # Logic

# - initialise new array
# - iterate through range of 0 up to length of input string
# - at each iteration add a new string to empty array
# - new string should comprise slice of input string up to current index
# - return new array

# # Methods

# integer#upto
# string#size
# string#slice

# # Code

def substrings_at_start(str)
  new_arr = []
  0.upto(str.size) do |i|
    next if i == 0 
    new_arr << str.slice(0,i)
  end
  new_arr
end

# Tests

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
