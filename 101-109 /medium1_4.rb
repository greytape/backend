# # I/O

# input: integer
# output: string (of 1s and 0s)

# # Logic

# - initialise empty array 
# - input integer times, add false to the array
# - initialise counter at 1
# - until counter equals input integer
# - increment counter by 1
# - iterate through range from 0 to counter with index
# - at the 'i'th element of the array, if i is divisible by the counter
# - reverse that element 
# - return array

# - iterate through array
# - initialise new array
# - add index of each element that equals true to new array
# - return new array

# # Methods

# integer#times
# range#each_with_index #??
# integer#upto #??

# # Code

def light_test(int)
  arr = []
  counter = 1
  int.times { arr << false }
  until counter == (int + 1)
    arr.map!.with_index do |e, i|
      (i + 1) % counter == 0 ? !e : e
    end
    counter += 1
  end
  arr
end

def which_lights?(int)
  arr = light_test(int)
  new_arr = []
  arr.each_with_index { |e, i| new_arr << (i + 1) if e }
  new_arr
end

# Tests

puts light_test(5) == [true, false, false, true, false]
puts light_test(10) == [true, false, false, true, false, false, false, false, true, false]
p which_lights?(5)
p which_lights?(10)