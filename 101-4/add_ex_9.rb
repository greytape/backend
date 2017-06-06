statement = "the flintstones rock"

def titleize(words)
  array = words.split
  array.map! do |word|
    word = word.split('')
    word[0].capitalize!
    word.join
  end
  array.join(' ').to_s
end

puts titleize(statement)
