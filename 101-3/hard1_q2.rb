greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings 

# greeting should display { a: 'hi there'}
# As string#<< mutates the caller, the original hash is affected.