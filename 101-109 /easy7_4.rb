# # I/O

# input: string
# output: string

# # Logic

# - create a hash with every lowercase and uppercase letter as keys
# - all values should be the opposite case version of that letter
# - split the string into an array
# - iterate through the array, transforming each element 
# - each element should be replaced by the value from the hash
# - join array back into string
# - return string 

# # Methods

# string#chars
# array#map
# hash#[]
# array#join

# # Code

SWAPCASE = {'a' => 'A', 'b' => 'B', 'c' => 'C', 'd' => 'D', 'e' => 'E', 'f' => 'F', 'g' => 'G', 'h' => 'H', 'i' => 'I', 'j' => 'J', 'k' => 'K', 'l' => 'L', 'm' => 'M', 'n' => 'N', 'o' => 'O', 'p' => 'P', 'q' => 'Q', 'r' => 'R', 's' => 'S', 't' => 'T', 'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' => 'X', 'y' => 'Y', 'z' => 'Z', 
            'A' => 'a', 'B' => 'b', 'C' => 'c', 'D' => 'd', 'E' => 'e', 'F' => 'f', 'G' => 'g', 'H' => 'h', 'I' => 'i', 'J' => 'j', 'K' => 'k', 'L' => 'l', 'M' => 'm', 'N' => 'n', 'O' => 'o', 'P' => 'p', 'Q' => 'q', 'R' => 'r', 'S' => 's', 'T' => 't', 'U' => 'u', 'V' => 'v', 'W' => 'w', 'X' => 'x', 'Y' => 'y', 'Z' => 'z' }

def swapcase(str)
  arr = str.chars
  arr.map! { |e| SWAPCASE[e] ? SWAPCASE[e] : e }
  arr.join('')
end

# Tests

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'