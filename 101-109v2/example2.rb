# # Problem

# - write method that returns an array of hashes. 
# - returned hashes should be those hashes from a
#   predefined list of products (an array of hashes, each with certain
#   attributes) that match the criteria set out in a query hash with 
#   certain conditions


# # I/O

# input: hash
# output: array of hashes

# # Logic

# - take values from input hash, and save as variables
# - initialise new empty array
# - iterate through products array
# - use conditionals to determine if hash element meets conditions
# - if so, add hash element to new array  
# - return new array

# # Methods

# hash#[]
# array#each
# array#<<

# # Code

PRODUCTS = [
  { name: "Thinkpad x210", price: 220 },
  { name: "Thinkpad x220", price: 250 },
  { name: "Thinkpad x250", price: 979 },
  { name: "Thinkpad x230", price: 300 },
  { name: "Thinkpad x230", price: 330 },
  { name: "Thinkpad x230", price: 350 },
  { name: "Thinkpad x240", price: 700 },
  { name: "Dell Latitude", price: 200 },
  { name: "Dell Latitude", price: 650 },
  { name: "Dell Inspiron", price: 300 },
  { name: "Dell Inspiron", price: 450 }
]

def search(query)
  price_min = query[:price_min]
  price_max = query[:price_max]
  q = query[:q]
  new_array = []
  PRODUCTS.each do |hash_element|
    if hash_element[:name].downcase.include?(q) &&
      hash_element[:price] >= price_min &&
      hash_element[:price] <= price_max 
        new_array << hash_element
    end
  end
  new_array
end

# Tests

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: "dell"
}

puts search(query)
puts search(query2)
