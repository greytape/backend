# # Problem

# - print all odd numbers from 1..99 inclusive, on separate lines

# # I/O

# n/a

# # Logic

# - use range and each, with conditional

# # Methods

# integer#odd?
# range#each 

# # Code

(1..99).each { |n| puts n if n.odd? }

# Tests