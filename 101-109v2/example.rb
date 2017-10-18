# # Problem

# - method that takes english description of simple maths Problem
#   as string parameter and outputs integer value of result of 
#   implied calculation
# - operations include: plus, minus, divide

# # Logic

# - initialise array of english words as numbers
# - split string into array of words
# - initialise total variable as 0
# - 


# # Methods

# string#chars

# Code 

ENGLISH_NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five', 
  'six', 'seven', 'eight', 'nine']

def find_number(string)
  if string.to_i.to_s == string
    string.to_i
  else
    ENGLISH_NUMBERS.find_index(string)
  end
end

def calculate_new_total(total, sub_array)
  case sub_array[0]
  when 'minus'
    total - find_number(sub_array[1]) 
  when 'plus'
    total + find_number(sub_array[1])
  when 'divide'
    total / find_number(sub_array[1])
  when 'multiply'
    total * find_number(sub_array[1])
  end

end

def computer(string)
  array = string.split
  total = find_number(array.shift)
  while array.length > 0
    subsequence = array.slice!(0,2)
    total = calculate_new_total(total, subsequence)
  end
  total
end

# Tests

# p find_number('two')

p computer("two plus two") # => 4
p computer("seven minus six") # => 1
p computer("zero plus 8") # => 8
p computer("two plus two minus three") # => 1
p computer("three minus one plus five minus 4 plus six plus 10 minus 4") # => 15