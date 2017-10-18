# # Problem

# - method that takes string as argument and returns new string with 
#   capitalisation alternating between each letter
# - First letter should be capital

# # Logic

# - convert string to array of characters
# - iterate through array with index
#   - if index is even, capitalise element
#   - else downcase element
# - join array into string and return

# # Methods

# string#chars
# array#map!
# array#with_index
# string#upcase
# string#downcase
# array#join

# Code

def staggered_case(string)
  string.chars.map.with_index do |e, i|
    i.even? ? e.upcase : e.downcase
  end.join
end

# Tests

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'