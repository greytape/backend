require 'pry'
require 'set'

class Minilang
  attr_accessor :instructions, :stack, :register, :number_of_prints

  ACTIONS = Set.new %w(PUSH POP ADD SUB MULT DIV MOD PRINT)

  class MinilangRuntimeError < StandardError; end
  class BadTokenError < MinilangRuntimeError; end 
  class EmptyStackError< MinilangRuntimeError; end

  def initialize(input)
    @stack = []
    @register = 0
    @instructions = input.split
    @number_of_prints = 0
  end

  def eval
    instructions.each { |token| eval_token(token) }
  rescue MinilangRuntimeError => error
    puts error.message
  end

  private

  def eval_token(token)
    if ACTIONS.include?(token)
      send(token.downcase)
    elsif token =~ /\d+/
      self.register = token.to_i
    else
      raise BadTokenError, "# Invalid token: #{token}"
    end
  end

  def pop
    if stack.size == 0
      raise EmptyStackError, "# Empty stack."
    end
    self.register = stack.pop
  end

  def push
    stack.push(register)
  end

  def add
    self.register += pop
  end

  def sub
    self.register -= pop
  end

  def mult
    self.register *= pop
  end

  def div
    self.register /= pop
  end

  def mod
    self.register %= pop
  end

  def print
    p register
  end
end

class MyError < StandardError
  def initialize(msg)
    super
  end
end

Minilang.new("5 PUSH 3 MULT PRINT").eval
Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
Minilang.new('5 PUSH POP POP PRINT').eval
Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
Minilang.new('-3 PUSH 5 XSUB PRINT').eval
Minilang.new('-3 PUSH 5 SUB PRINT').eval
Minilang.new('6 PUSH').eval