# Approach

# - use the same code as the previous challenge
# - but now there might be a leading '+' or '-'
# - if there is,we can deal with this in the hash
# - by making adding the value from the hash conditional on it being truthy
# - then we can look at the first value in the array
# - if '-', then multiply all values in the sum by -1, else by 1

# Code

require 'pry'

def pos_neg?(array)
  value = 1
  if array[-1] == '-'
    value = -1
  end
  value
end

def string_to_signed_integer(str)
  num_hsh = {'1'=>1,'2'=>2,'3'=>3,'4'=>4,'5'=>5,'6'=>6,'7'=>7,'8'=>8,'9'=>9,'0'=>0}
  arr = str.chars.reverse
  pos_neg = pos_neg?(arr)
  total = 0
  new_arr = []
  arr.each do |str|
    new_arr << num_hsh[str] if num_hsh[str]
  end
  new_arr.each_with_index do |num, i|
    total += num * 10 ** i * pos_neg
  end
  total
end

# Tests

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
