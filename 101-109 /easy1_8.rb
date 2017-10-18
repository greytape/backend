def average(arr)
  arr = arr.map { |num| num.to_f }
  sum = arr.reduce(:+)
  sum / arr.count
end

puts average([1, 5, 87, 45, 8, 8]).class
puts average([9, 47, 23, 95, 16, 52]).class