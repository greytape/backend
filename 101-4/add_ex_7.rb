statement = "The Flintstones Rock"

array = statement.split('')

count = {}

array.each do |letter|
  if count.include?(letter)
    count[letter] += 1
  else
    count[letter] = 1
  end
end

puts count

