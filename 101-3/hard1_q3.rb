def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Expected Output
# one is: 'one'
# two is: 'two'
# three is: 'three'
# 
# BECAUSE String#= doesn't mutate the caller, and so Ruby uses pass 
# by value. The outer variables are unaffected by what happens in
# the method. 


def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Expected Output
# one is: 'one'
# two is: 'two'
# three is: 'three'
# 
# BECAUSE String#= doesn't mutate the caller, and so Ruby uses pass 
# by value. The outer variables are unaffected by what happens in
# the method. 

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Expected Output
# one is: 'two'
# two is: 'three'
# three is: 'one'
# 
# BECAUSE String#gsub! mutates the caller. Therefore,
# effective Ruby uses pass by reference. The outer variables 
# are affected by what happens in the method. 