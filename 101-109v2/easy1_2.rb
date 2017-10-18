# # Problem

# - write method that takes integer value and returns false if even
#   and true if odd

# # I/O
# input: integer
# output: boolean


# # Logic

# - use integer#even

# # Methods

# integer#even

# Code

def is_odd?(int)
  int.odd?
end

# Tests

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false