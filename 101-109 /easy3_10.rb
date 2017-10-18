# Approach

# - totally easy. just turn number to string then use string approach

# Code

def palindromic_number?(num)
  num.to_s 
end

# Tests

puts palindromic_number?(3454300) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true