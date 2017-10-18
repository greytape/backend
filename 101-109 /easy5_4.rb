# Approach

# - input: string
# - output: string

# - might be useful to split the string into an array of words
# - then we need to change each element
# - we can remove the first element and put it on the end
# - then we can remove the penultimate element and put it on the front
# - then join it all back together

# - methods:
# - str#split
# - arr#map
# - str#shift
# - str#<<
# - str#[]
# - str#prepend
# - str#join

# Code

def swap(txt)
  arr = txt.split
  arr.map! do |word|
    first = word.slice!(0)
    word << first
    word.size == 1 ? last = word.slice!(-1) : last = word.slice!(-2)
    word.prepend(last)
  end
  arr.join(' ')
end

# Tests

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'