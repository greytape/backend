def stringy(strtr = 0, int)
  if strtr == 0
    x = '0'
    y = '1'
  elsif strtr == 1
    x = '1'
    y = '0'
  end
  str = ''
  counter = 1
  int.times do
    counter > 0 ? str << x : str << y
    counter *= -1 
  end
  str
end

puts stringy(1, 9)