# # Problem

# - same requirements as previous exercise, but non alphabetic 
#   characters are ignored when deciding whether next character
#   should be upper or lower case

# # Logic

# - use same approach as previous method, but use alternater 
#   variable instead of index
# - set to true initially
# - then iterate through array of characters
#   - if element is alphabetic (determine with regex)
#     - if alternator is true 
#       - upcase element and set alternator to false
#     - else set alternator to true
#   - else
#     - do nothing
# - join array back together

# # Methods

# array#map
# string#upcase
# string#downcase
# array#join

# Code

def staggered_case_old(string)
  string.chars.map.with_index do |e, i|
    i.even? ? e.upcase : e.downcase
  end.join
end

def staggered_case(string)
  alternator = true
  array = string.chars
  array.map! do |e|
    if e =~ /[a-zA-Z]/
      if alternator
        alternator = false
        e.upcase
      else 
        alternator = true
        e.downcase
      end
    else
      e
    end
  end
  array.join
end

# Tests

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'