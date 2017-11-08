def grouper(array)
  yield(array)
end

hats = [1, 2, 3, 4]
grouper(hats) do |_,_,*raptors|  
  p raptors
end