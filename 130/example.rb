def foo(bar:, baz: 'hats')
  puts bar
  puts baz
end

foo # => 'default'
# foo(bar: 'baz') # => 'baz'