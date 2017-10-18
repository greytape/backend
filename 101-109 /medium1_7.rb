# # I/O

# input: string
# output: string

# # Logic

# - set constant of array of number words zero to nine
# - split input string into array of words
# - iterate through array, if element is found in word array, transform to index of word
# - rejoin word array and return string 

# # Methods

# string#split
# array#map!
# array#include?
# array#join

# # Code

# NUMBER_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

# def word_to_digit(input_text)
#   word_array = input_text.split
#   word_array.map! do |e|
#     NUMBER_WORDS.include?(e.downcase.gsub(/[^a-z]/,'')) ? NUMBER_WORDS.find_index(e.downcase.gsub(/[^a-z]/,'')) : e
#   end
#   word_array.join(' ')
# end

# NUMBER_WORDS = {'zero'=>0, 'one'=>1, 'two'=>2, 'three'=>3, 'four'=>4, 'five'=>5, 'six'=>6, 'seven'=>7, 'eight'=>8, 'nine'=>9}

def word_to_digit(input_text)
  union = Regexp.union('zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine',)
  input_text.gsub!(/zero|one|two|three|four|five|six|seven|eight|nine/i,'zero'=>0, 'one'=>1, 'two'=>2, 'three'=>3, 'four'=>4, 'five'=>5, 'six'=>6, 'seven'=>7, 'eight'=>8, 'nine'=>9)
  puts input_text
end


# Tests

word_to_digit('Please call me at five five fiveone two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'