# # I/O

# input: array, hash
# output: string

# # Logic

# - as we don't know how long array is, we have to add elements to a string
# - add them sequentially (from front) using shift
# - use hash with value to refer to title/job
# - use string interpolation to display result

# # Methods

# array#empty?
# array#shift
# hash#[]
# array#[]

# # Code

def greetings(arr, hsh)
  name = ''
  until arr.empty? 
    name << ' ' + arr.shift
  end
  "Hello,#{name}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end

# Tests

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.