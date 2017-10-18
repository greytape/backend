hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = []

hsh.each do |_, value|
  value.each do |word|
    word.each_char do |letter|
      vowels << letter if "aeiou".include?(letter)
    end
  end
end

print vowels
