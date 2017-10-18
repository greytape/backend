# # I/O

# input: string
# output: string

# # Logic

# - turn string into an array, split by spaces
# - transform each element in the array into a capitalised version of itself
# - put the string back together
# - return the new string

# # Methods

# string#split
# array#map!
# string#capitalize
# array#join

# # Code

def word_cap(str)
  str.split.map! { |e| e.capitalize }.join(' ')
end

# Tests

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'