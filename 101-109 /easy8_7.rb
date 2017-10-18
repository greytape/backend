# # I/O

# input: string
# output:string

# # Logic

# - initialise new string
# - split string into array of characters
# - iterate through array
# - at each iteration, add current element to new string twice
# - return new string 

# # Methods

# string#chars
# array#each
# string#<<

# # Code

def repeater(str)
  new_string = ''
  arr = str.chars
  arr.each do |e|
    2.times { new_string << e }
  end
  new_string
end

# Tests

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''