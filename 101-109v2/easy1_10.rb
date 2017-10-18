# # Problem

# - write method that returns half of a given integer, if another 
#   parameter is set to true, otherwise 0

# # I/O

# input: integer, boolean
# output: integer

# # Logic

# - test for boolean parameter
# - if true, return half integer, else return 0

# # Methods

# none

# # Code

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end 

# Tests

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000