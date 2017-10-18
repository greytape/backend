def sum(int)
  arr = int.to_s.split('')
  arr = arr.map {|chr| chr.to_i}
  arr.inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

def sum(int)
  arr = []
  arr << int % 10
  arr 
  arr = arr.map {|chr| chr.to_i}
  arr.inject(:+)
end