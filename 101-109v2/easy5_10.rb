# # Problem

# - print out some text in a predefined box of text characters
# - box should expand to fit text

# # I/O

# input: string
# output: string

# # Logic

# - measure string length and store as variable
# - set three strings as variables:top, middle and center 
# - add enough hyphens to top line based on string length, same for 
#   middle with spaces

# # Methods

# string#length

# Code

def print_in_box(string)
  string_length = string.length
  top_line = "+-" + ('-' * string_length) + "-+"
  middle_line = "| " + (' ' * string_length) + " |"
  center_line = "| " + string + " |"
  puts top_line
  puts middle_line
  puts center_line
  puts middle_line
  puts top_line
end

# Tests

print_in_box('To boldly go where no one has gone before.')
print_in_box('')