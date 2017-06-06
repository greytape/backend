flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

capture = flintstones.index {do |name| name[0,2] == "Be" }

puts capture
