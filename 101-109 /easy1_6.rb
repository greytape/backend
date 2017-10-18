def reverse_words(wrds)
  arr = wrds.split
  arr = arr.map do |wrd|
    if wrd.size >= 5
      wrd.reverse
    else
      wrd
    end
  end
  arr.join(' ') 
end 


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS