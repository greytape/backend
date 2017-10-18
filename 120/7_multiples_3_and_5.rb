=begin

Problem

- sum all natural numbers smaller than n that are multiples of 3 and/or 5
- only count multiples of 3 and 5 once

Logic

- create an array of all the numbers from 1 to n
- select all values in the array that are multiples of either three or five
- sum the returned array

Methods

array#select
array#reduce

=end

# Code

def solution(number)
  arr = (1...number).to_a
  arr.select {|number| number % 3 == 0 || number % 5 == 0}.reduce(:+)
end

# Tests

p solution(10)
