def digit_list(lst)
  arr_lst = lst.to_s.split('')
  arr_lst.map { |dgt| dgt.to_i }
end

print digit_list(123456)