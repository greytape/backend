# Approach

# - input: string
# - output: integer

# - think that the string#chars method will be helpful here.
# - then I guess I can use a hash?
# - so I'll make an array of the characters using string#chars
# - then iterate through it, calling each element as the key in a hash, and returning the value to a new array
# - the values should be integers
# - don't think join works with integers
# - so I'll have to add them together, and depending on their location in the array, I'll multiply by 10^x

# Code

def string_to_integer(str)
  num_hsh = {'1'=>1,'2'=>2,'3'=>3,'4'=>4,'5'=>5,'6'=>6,'7'=>7,'8'=>8,'9'=>9,'0'=>0,}
  arr = str.chars.reverse
  total = 0
  new_arr = []
  arr.each do |str|
    new_arr << num_hsh[str]
  end
  new_arr.each_with_index do |num, i|
    total += num * 10**i
  end
  total
end

# Tests

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570