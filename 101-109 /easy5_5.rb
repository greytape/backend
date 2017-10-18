# Approach

# - the tricky part here will be detecting consecutive identical characters
# - potentially we could do this by iterating through them with an index
# - and deleting any where the value is identical to the previous value
# - then it would just be a matter of swapping non-alphanumerics for spaces
# - presumably using gsub

# - methods:
# - str#split
# - array#each_with_index
# - str#gsub

# Code

def cleanup(txt)
  txt.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

# Tests

puts cleanup("---what's my +*& line?") == ' what s my line '