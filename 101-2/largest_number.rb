#Pseudocode
# Given array of integers called 'array'
# START
# SET iterator = 1
# SET SavedNumber = 0
# WHILE iterator < length of array
#   compare first number against SavedNumber
#   if first number > SavedNumber
#     SET SavedNumber as first number
#   else 
#   move to next iteration
#   iterator += 1
# end
# PRINT SavedNumber  

def largest(array)
  iterator = 0
  saved = 0
  while iterator < array.length
    if array[iterator] > saved 
      saved = array[iterator]
    end 
    iterator += 1
  end
  saved
end

puts largest([2,3,10,5,6,7,8,9])
