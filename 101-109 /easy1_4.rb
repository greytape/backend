def count_occurrences(arr)
  hsh = {}
  arr.each do |vehicle| 
    if hsh.include?(vehicle)
      hsh[vehicle] += 1
    else
      hsh[vehicle] = 1
    end
  end
  hsh
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

print count_occurrences(vehicles)