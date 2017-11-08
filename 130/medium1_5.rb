items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# gather(items) do |*a,b|
#   puts "#{a.join(', ')} "
#   puts b
# end

# gather(items) do |a, *b, d|
#   puts a
#   puts "#{b.join(', ')} "
#   puts d
# end

# gather(items) do |a, *b|
#   puts a
#   puts "#{b.join(', ')} "
# end

gather(items) do |a|
  puts "#{a.join(', ')} "
end