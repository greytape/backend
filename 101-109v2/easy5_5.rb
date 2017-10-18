# # Problem

# - method to replcae non-alphanumerics with spaces in string
# - groups of consecutive non-alphanumerics should always be replaced
#   by a single space

# # I/O

# input: string
# output: string

# # Logic

# - replace all non-alphanumerics with spaces using gsub
# - convert amended string to array of characters
# - iterate through array
# - if element is a space, and previous element was a space, remove element
# - rejoin array to string

# # Methods

# string#chars
# string#gsub
# array#select
# array#with_index

# Code

def cleanup(string)
  string = string.gsub(/[^a-zA-Z0-9]/,' ')
  array = string.chars
  array = array.select.with_index do |e, i|
    if i == 0
      true
    else
      if e == ' ' && array[i - 1] == ' '
        false
      else 
        true
      end
    end
  end
  array.join
end

# Tests

puts cleanup("---what's my +*& line?") == ' what s my line '
