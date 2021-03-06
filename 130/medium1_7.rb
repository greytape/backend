# # Group 1
# def check_return_with_proc
#   my_proc = proc { return }
#   my_proc.call
#   puts "This will never output to screen."
# end

# check_return_with_proc

# Group 2
# my_proc = proc { return }

# def check_return_with_proc_2(my_proc)
#   my_proc.call
# end

# check_return_with_proc_2(my_proc)

# # Group 3
# def check_return_with_lambda
#   my_lambda = lambda { return }
#   my_lambda.call
#   puts "This will be output to screen."
# end

# check_return_with_lambda

# # Group 4
# my_lambda = lambda { return }
# def check_return_with_lambda(my_lambda)
#   my_lambda.call
#   puts "This will be output to screen."
# end

# check_return_with_lambda(my_lambda)

# # Group 5
def block_method_3
  yield
end

block_method_3 { return }

=begin

In Ruby, methods seem to throw LocalJumpErrors when blocks attempt to return. 
If the code in a proc attempts to return no error is thrown, provided that the proc is defined within the method, rather than outside of the method.
Methods seem to ignore any returns made by lambdas, wheher the lambda was defined inside or outside the method.

=end