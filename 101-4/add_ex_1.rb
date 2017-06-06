flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flinthash = {}

flintstones.each_with_index do |value, index|
  flinthash[value] = index
end

puts flinthash