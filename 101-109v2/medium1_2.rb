# # Problem

# - method that rotates a parameter array (in same way as last 
#   exercise), but does this the number of times specified
#   by second integer parameter

# # Logic

# - transform integer into array of characters
# - create subsequence of last 'integer' digits, using range 
# - rotate that subsequence, then concatenate with leading subsequence 
# - return concatenated array, joined into string then integer

# # Methods

# integer#times

# Code

def rotate_array(array)
  array[1..-1] + array[0..0]
end

def rotate_rightmost_digits(digits, sequence_number)
  new_array = digits.to_s.chars
  if sequence_number == new_array.length
    back_sequence = new_array[-(sequence_number)..-1]
    front_sequence = []
    back_sequence = rotate_array(back_sequence)
  else
    back_sequence = new_array[-(sequence_number)..-1]
    front_sequence = new_array[0..(new_array.length - sequence_number - 1)]
    back_sequence = rotate_array(back_sequence)
  end
  (front_sequence + back_sequence).join.to_i
end

# Tests

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917