# # Problem

# - check that in a given text string, there are an equal number of open
# - and closed brackets. For example "(()())"
# - also, closed brackets must be preceded by open brackets 
# - and open brackets must be followed by closed brackets
# - eg, this is invalid ")("

# # I/O

# input: string
# output: boolean

# # Logic

# - set a variable open to 0
# - iterate through the characters of the string
# - when an open bracket occurs increment open by 1
# - if open is greater than 1, and a closed bracket occurs, decrement open by 1
# - if open is 0 or less, and closed occurs, return false
# - at the end of the method, if open does not equal 0, return false
# - else return true

# # Methods

# string#chars
# array#each

# # Code

def balanced?(str)
  open = 0
  str.chars.each do |e|
    open += 1 if e == '('
    if e == ')'
      open <= 0 ? (return false) : open -= 1
    end
  end 
  open == 0 ? true : false
end

# Tests

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false