# # Problem

# - create a method that take two arguments (an integer and a string)
#   and prints the string, integer number of times. 

# # I/O

# input: (positive) integer
# output: string

# # Logic

# - use integer#times to print the string that number of times.

# # Methods

# integer#string
# Kernel#puts

# # Code

def repeat(string, integer)
  integer.times { puts string }
end

# Tests 

repeat('Hello', 3)