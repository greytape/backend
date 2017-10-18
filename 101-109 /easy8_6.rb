# # I/O

# input: (two) integers
# output: (side effect) printed strings and integers

# # Logic

# - iterate through a range between input integers
# - at each iteration, print index unless divisible by 3 or 5
# - if it is print fizz, buzz or fizzbuzz

# # Methods

# integer#%
# kernel#puts

# # Code

def fizzbuzz(int1, int2)
  (int1..int2).each do |i|
    if i % 3 == 0 && i % 5 == 0
      puts 'FizzBuzz'
    elsif i % 3 == 0
      puts 'Fizz'
    elsif i % 5 == 0
      puts 'Buzz'
    else
      puts i
    end
  end
end

# Tests

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz