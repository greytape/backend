fact = Enumerator.new do |y|
  a = 1
  loop do
    y << 1.upto(a).reduce(:*)
    a += 1
  end
end

p fact.take(7) 