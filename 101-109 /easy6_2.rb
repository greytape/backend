# # I/O

# input: string
# output: array

# # Logic

# - turn the string into an array
# - iterate through the array, selecting characters that are not vowels
# - return the result

# # Methods

# string#chars
# array#delete_if

# # Code

def remove_vowels(arr)
  arr.map! do |str|
    str.chars.delete_if do |char| 
      ['a','e','i','o','u','A','E','I','O','U'].include?(char)}.join('')
    end 
  end
  arr
end

# Tests

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']