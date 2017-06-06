if false
  greeting = “hello world”
end

puts greeting

# Greeting variable should show error because the program has never seen the 
# assignment. This is not because a new variable scope is defined by
# the 'if block' though. 

# Turns out this answer is wrong. Even though the greeting variable
# has not been assigned, Ruby interprets it as nil rather than by 
# throwing an exception.