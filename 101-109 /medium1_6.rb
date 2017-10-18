# # I/O

# input: string
# output: integer

# # Logic

# - initialise register variable as 0
# - initialise empty array as stack
# - split input string to individual words and store as instruction array
# - iterate through instruction array
# - use case when with different instructions

# # Methods

# string#split
# array#each

# # Code

def minilang(instructions)
  register = 0
  stack = []
  instr_arr = instructions.split
  instr_arr.each do |e|
    if e.to_i.to_s == e
      register = e.to_i
    elsif e == 'PUSH'
      stack << register
    elsif e == 'ADD'
      register += stack.pop
    elsif e == 'SUB'
      register -= stack.pop
    elsif e == 'MULT'
      register *= stack.pop
    elsif e == 'DIV'
      register /= stack.pop
    elsif e == 'MOD'
      register %= stack.pop
    elsif e == 'POP'
      register = stack.pop
    elsif e == 'PRINT'
      puts "#{register}"
    end
  end
end


# Tests

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# # 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

minilang('5 PUSH POP PRINT')
# # 5