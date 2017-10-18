# # Problem

# - print out an 8 pointed star in an nxn grid
# - on each line (apart from the middle one) there should be three stars
# - number of spaces between stars will increment by one on each line

# # I/O

# input: integer
# output: (side effect) string

# # Logic

# - set the number of lines that need to be printed 
# - use string interpolation to print star then spaces
# - use 2 while loops for each section (above and below the line)
# - first line should as wide as input integer, 0 spaces between stars.
# - so spaces until first star should be ((width - 3) / 2) 
# - second line should be that , but one less and so on.

# # Methods

# array#reverse
# array#<<

# # Code

require 'pry'

def star(star_size)
  first_last_spaces = 0
  middle_spaces = (star_size - 3) / 2
  lines = []
  number_of_lines = (star_size - 1) / 2
  number_of_lines.times do 
    lines << "#{' ' * first_last_spaces}*#{' ' * middle_spaces}*#{' ' * middle_spaces}*#{' ' * first_last_spaces}"
    first_last_spaces += 1
    middle_spaces -= 1
  end
  puts lines
  puts "#{'*' * star_size}"
  puts lines.reverse
end

# Tests

star(5)
star(9)
star(23)