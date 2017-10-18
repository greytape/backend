# # Problem

# - need to read in a file, swap out adjectives, nouns, verbs and 
#   adverbs with different ones, then print the results.

# # I/O

# input: txt file
# output: (side effect) display string

# # Logic

# - read parts of speech files in to program, store each as separate arrays
# - read text file into program, store as string
# - split string into array
# - iterate through array. for each element, check if word exists in one
#   of the part of speech arrays.
# - if it does, replace it with a random element from the relevant array
# - join up and return modified array 

# # Methods


# string#split
# array#map!
# array#sample

# # Code

ADJECTIVES = File.read('adjectives.txt').split
NOUNS = File.read('nouns.txt').split
VERBS = File.read('verbs.txt').split
ADVERBS = File.read('adverbs.txt').split

def madlib(file_name)
  text = File.read(file_name).split
  text.map! do |e|
    if ADJECTIVES.include?(e)
      ADJECTIVES.sample
    elsif NOUNS.include?(e)
      NOUNS.sample
    elsif ADVERBS.include?(e)
      ADVERBS.sample
    elsif VERBS.include?(e)
      VERBS.sample
    else 
      e
    end
  end
  text.join(' ')
end

# Tests

puts madlib('madlib_sample.txt')