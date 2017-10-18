result = [[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

#print result

arr = [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]
arr.map do |arr2|
  arr.pop
end

print arr