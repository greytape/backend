def make_UUID()

  hex_letters = %w(1 2 3 4 5 6 7 8 9 0 a b c d e f)

  uuid = ''
  structure = [8,4,4,4,12]

  structure.each do |num|
    num.times do 
      uuid << hex_letters.sample
    end
    uuid << '-'
  end
  uuid.chop
end

puts make_UUID

