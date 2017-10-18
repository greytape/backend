# # I/O

# input: string
# output: array

# # Logic

# - iterate through string, feeding smaller and smaller substrings into 
# - method from previous exercise
# - at each iteration, previous method will generate an array of strings
# - add these to a new array, then flatten that array.

# # Methods

# integer#upto
# array#flatten

# # Code

def substrings_at_start(str)
  new_arr = []
  0.upto(str.size) do |i|
    next if i == 0 
    new_arr << str.slice(0,i)
  end
  new_arr
end

def substrings(str)
  new_array = []
  0.upto(str.size - 1) do |i|
    new_array << substrings_at_start(str[i..-1])
  end
  new_array.flatten
end



# Tests

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]