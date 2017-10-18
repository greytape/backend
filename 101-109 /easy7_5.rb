# # I/O

# input: string
# output: string

# # Logic

# - split string into array
# - iterate through array with index transforming alternate characters to upcase
# - look at whether the index is even as to whether to upcase
# - put string back together

# # Methods

# string#chars
# array#map
# enumerator#with_index
# integer#even?
# array#join

# # Code

def staggered_case(str)
  str.chars.map!.with_index { |e, i| i.even? ? e.upcase : e.downcase }.join('')
end

# Tests

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
