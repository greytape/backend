# # Problem

# - write an alogrithm that sorts integers in an array from lowest to highest
# - use the 'bubble sort' alogrithm

# # I/O

# input: array
# output: array

# # Logic

# - initialise a counter at zero
# - iterate through the array, one element at a time
# - set counter to zero
# - if the element is larger than the next element, swap them
# - if not leave as it is, increment counter by 1
# - at end of iteration, if counter equals length of array, return array

# # Methods

# array#each
# array#length

# # Code

require 'pry'

def bubble_sort!(arr)
  counter = 0
  loop do
    counter = 0
    arr.each_with_index do |e, i|
      if ((i + 1) == arr.length)
        counter += 1
        break
      elsif arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      else 
        counter += 1
      end
    end
    return arr if counter == arr.length
  end
end

# Tests

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)