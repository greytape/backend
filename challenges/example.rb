class Array
  def rejuice
    counter = 1
    total = self[0]
    while counter < self.size
      total = yield(self[counter], total)
      counter += 1
    end
    total
  end
end

hats = [1,2,3,4,5]

p hats.rejuice(:+)