# # I/O

# input: string
# output: hash

# # Logic

# - edit the previous word_sizes method so that we only count alphanumeric characters

# # Methods

# - gsub to edit the each element of the array so that non-alphanumeric characters are removed

# Code 

def word_sizes(txt)
    arr = txt.split
    hsh = Hash.new(0)
    arr.each do |e|
      hsh[(e.gsub(/\W/,'')).size] += 1
    end
    hsh
end

# Tests

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}