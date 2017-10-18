array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_array = []
counter = 0

array.map do |hash|
  new_array << {}
  hash.map do |key, value|
    value += 1
    new_array[counter][key] = value
  end
  counter += 1
end

print new_array