# def compute
#   block_given? ? yield : "Does not compute."
# end

# puts compute { 5 + 3 } == 8
# puts compute { 'a' + 'b' } == 'ab'
# puts compute == 'Does not compute.'

def compute(input)
  yield(input) if block_given?
end

puts compute('hats') { |x| x } 
puts compute(100) { |x| x }
puts compute('string')