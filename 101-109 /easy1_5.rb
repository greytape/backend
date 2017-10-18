def reverse_sentence(wrds)
  arr = wrds.split
  arr.reverse.join(' ')
end

# puts reverse_sentence("Hello there my good man.")

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'