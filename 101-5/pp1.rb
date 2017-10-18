arr = ['10', '11', '9', '7', '8']

new_arr = arr.sort_by do |x| 
  -x.to_i
end

print new_arr 