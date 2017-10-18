# # Problem

# - test out whether a given word can be made using the available bricks
# - each brick can only be used once, and has two letters on it
# - each letter only shows on one block

# # B:O   X:K   D:Q   C:P   N:A
# # G:T   R:E   F:S   J:W   H:U
# # V:I   L:Y   Z:M


# # I/O

# input: string
# output: boolean

# # Logic

# - put block values in hash
# - split string into characters
# - iterate through characters
# - at each iteration, iterate through characters again 
# - if hash has the element as a key
#   - check that none of the characters in the array equal the corresponding value
#   - if they do, return false
# - if hash has the element as a value 
#   - check that none of the characters in the array equal the corresponding keys
#   - if they do, return false
# - else return true

# # Methods

# string#chars
# array#each
# hash#has_key?
# hash#[]
# hash#has_value?
# hash#key

# # Code

BLOCKS =  { 'B'=>'O', 'X'=>'K', 'D'=>'Q', 'C'=>'P', 'N'=>'A', 'G'=>'T', 
            'R'=>'E', 'F'=>'S', 'J'=>'W', 'H'=>'U', 'V'=>'I', 'L'=>'Y', 'Z'=>'M'
          }

def block_word?(word)
  characters = word.chars
  characters.each do |e|
    if BLOCKS.has_key?(e)
      characters.each { |f| return false if BLOCKS[e] == f }
    elsif BLOCKS.has_value?(e)
      characters.each { |f| return false if BLOCKS.key(e) == f }
    end
  end
  true
end

# Tests

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true