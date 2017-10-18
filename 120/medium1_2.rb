class FixedArray
  
  attr_reader :elements

  def initialize(num_of_elements)
    @elements = []
    num_of_elements.times { @elements << nil }
  end

  def [](index)
    @elements[index]
  end

  def to_a
    @elements
  end

  def []=(index, object)
    @elements[index] = object
  end

  def to_s
    @elements.to_s
  end

  def [](index)
    @elements.fetch(index)
  end

end



fixed_array = FixedArray.new(5)
p fixed_array.to_s

puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'


begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end