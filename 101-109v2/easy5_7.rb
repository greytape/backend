# Problem
# I/O

# Logic
# Methods

# Code

def word_sizes(string)
  hash = {}
  string.split.each do |word|
    word.delete!('^a-zA-Z')
    hash.include?(word.length) ? hash[word.length] += 1 : hash[word.length] = 1
  end
  hash
end

# Tests

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}