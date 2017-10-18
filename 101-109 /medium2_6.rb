# # Problem

# - determine whether triangle is acute, obtuse or right-angled based on 
#   its 3 angles
# - if angles add up to more than 180 or any is 0 or less, reject

# # I/O

# input: integers
# output: symbol

# # Logic

# - if sum of angles is greater than 180 return invalid
# - if any angle is 0 or less return invalid
# - if any angle is greater than 90 return obtuse
# - if any angle == 90 return right-angled
# - if all angles are less than 90 return acute 

# # Methods

# none?

# Code

def triangle(num1, num2, num3)
  if (num1 + num2 + num3) != 180
    return :invalid 
  elsif num1 == 0 || num2 == 0 || num3 == 0 
    return :invalid
  elsif num1 > 90 || num2 > 90 || num3 > 90
    return :obtuse 
  elsif num1 == 90 || num2 == 90 || num3 == 90
    return :right 
  else 
    :acute
  end
end

# Tests

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
