# Approach

# - evaluate first term
# - evaluate second term
# - essentially just write out the logic
# - if first true && second false return true
# - if first false && second true return false

# Code

def xor?(case1, case2)
  if case1 == true && case2 == true
    return false
  elsif case1 == false && case2 == false
    return false
  elsif case1 == true && case2 == false
    return true
  elsif case1 == false && case2 == true
    return true
  end
end

# Tests

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false