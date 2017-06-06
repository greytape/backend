def multiply_numbers!(numbers, multiplier)
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] = numbers[counter] * multiplier
    counter += 1
  end
end

cats = [1,2,3,4,5]
multiply_numbers!(cats,100)
print cats
