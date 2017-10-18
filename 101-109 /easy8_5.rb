# # I/O

# input: string
# output: array

# # Logic

# - use methods from previous exercise
# - delete any strings that are not palindromes
# - test for palindromes with separate method

# # Methods

# array#delete
# string#reverse

# # Code

def substrings_at_start(str)
  new_arr = []
  0.upto(str.size) do |i|
    next if i == 0 
    new_arr << str.slice(0,i)
  end
  new_arr
end

def substrings(str)
  new_array = []
  0.upto(str.size - 1) do |i|
    new_array << substrings_at_start(str[i..-1])
  end
  new_array
end


def palindrome?(str)
  str == str.reverse
end

def palindromes(str)
  arr = substrings(str)
  arr.flatten!
  arr.delete_if { |e| !palindrome?(e) || e.size == 1 }
end

# Tests

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
