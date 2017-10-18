# # I/O

# input: integer
# output: string(s)

# # Logic

# - method should have no return value, should print text as side effect
# - each line should be the length of the integer
# - method should print out as many lines as the integer
# - loop inputnum times with index
# - print a row of spaces (input - index) then a row of inputnum '*'s 

# # Methods

# integer#times
# enumerator#with_index

# # Code

def triangle(num)
  num.times.with_index do |i|
    line = ''
    (num - (i + 1)).times {line << ' '}
    (i + 1).times {line << '*'}
    puts line
  end
end

# Tests

triangle(7)

