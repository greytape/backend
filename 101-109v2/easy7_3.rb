# # Problem

# - method to take string as argument and return same string with 
#   first character of every word capitalised

# # Logic

# - split words of string into array 
# - transform array
# - join array together and return

# # Methods

# string#split
# array#map
# string#capitalise
# array#join

# Code

def word_cap(string)
  string.split.map { |e| e.capitalize }.join(' ')
end

# Tests

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'