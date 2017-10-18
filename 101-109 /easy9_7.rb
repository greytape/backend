# # I/O 

# input: string
# output: string

# # Logic

# - split string into array
# - return text containing string using string interpolation

# # Methods

# string#split
# array#[]

# # Code

def swap_name(str)
  arr = str.split
  first_name = arr[0]
  last_name = arr[1]
  "#{last_name}, #{first_name}"
end

# Tests

puts swap_name('Joe Roberts') == 'Roberts, Joe'