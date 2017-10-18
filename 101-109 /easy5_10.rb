# # I/O

# input: string
# output: string

# # Logic

# - need to count the length of the input string to be able to adjust the other lines
# - then add more characters to the strings of the other lines

# # Methods

# str#size
# int#times

# # Code

def print_in_box(txt)
  banner_length = txt.size
  line_1 = ''
  line_2 = ''
  line_4 = ''
  line_5 = ''
  banner_length.times do |x| 
    line_1 << '-'
    line_2 << ' '
    line_4 << ' '
    line_5 << '-'
  end
  puts "+-" + line_1 + "-+"
  puts "| " + line_2 + " |"
  puts "| " + txt + " |"
  puts "| " + line_4 + " |"
  puts "+-" + line_5 + "-+"
end

# Tests

print_in_box("What do you know, I've hone and succeeded.")