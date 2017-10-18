# # I/O

# input: string
# output: string

# # Logic

# - repurpose method from previous exercise
# - when adding element to new_string, only do once if not a vowel

# # Methods

# # Code

def double_consonants(str)
  new_string = ''
  arr = str.chars
  arr.each do |e|
    if e =~ /[b-df-hj-np-tv-z]/i
      new_string << e << e
    else 
      new_string << e
    end
  end
  new_string
end

# Tests

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""

