def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] = numbers[counter] * 2
    counter += 1
  end
end

cats = [1,2,3,4,5]
double_numbers!(cats)
print cats
