# # I/O

# input: array
# output: string

# # Logic

# - iterate through every element in input array adding them together
# - divide total by length of array
# - use case when statements to return correct grades 

# # Methods

# array#reduce
# array#length

# # Code

def get_grade(int1, int2, int3)
  arr = [int1, int2, int3]
  total = arr.reduce(:+) / arr.length 
  case  
  when total >= 90 && total <= 100
    'A'
  when total >= 80 && total <= 90
    'B'
  when total >= 70 && total <= 80
    'C'
  when total >= 60 && total <= 70
    'D'
  when total >= 0 && total <= 60
    'E'
  end
end

# Tests

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"