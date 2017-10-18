# # I/O

# input: string
# output: string

# # Logic

# - adapt method from previous exercise
# - instead of using the value of the index to up or downcase, use a counter
# - flip the counter from true to false if the character being assessed is alphabetic

# # Methods

# string#chars
# arr#map!
# string#=~
# arr#join

# # Code

require 'pry'

def staggered_case(str)
  change = false
  str.chars.map! do |e| 
    if !!(e =~ /[a-zA-Z]/)
      change = !change
    end
    change ? e.upcase : e.downcase
  end.join('')
end

# Tests

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
