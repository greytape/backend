# # I/O

# input: integer
# output: string (side effect)

# # Logic

# - set counter at 1
# - until counter reaches value of initial integer, run a loop
# - set 'space string' at each iteration
# - space string is ((int - 1) / 2) number of spaces) 
# - use string interpolation
# - print space string, then counter number of stars, then space string
# - increment counter by 2
# - then reverse process with until loop, decrement counter by two

# # Methods

# none?

# # Code

def diamonds(int)
  counter = 1
  until counter == int
    space_string = ((int - counter) / 2)
    puts "#{' ' * space_string}#{'*' * counter}#{' ' * space_string}"
    counter += 2
  end
  puts "#{'*' * counter}"
  until counter == 1
    counter -= 2
    space_string = ((int - counter) / 2)
    puts "#{' ' * space_string}#{'*' * counter}#{' ' * space_string}"
  end
end

# Tests

diamonds(113)