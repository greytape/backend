=begin

Problem

- Given a denary number as an input, convert it to a series of instructons each referring to binary digits. 
- If the instruction is contained in the list of commands, the relevant binary digit should be 1, if not it should be zero. If any of four instructions occur out of sequence (reversed), this means that a fifth binary digit (the leftmost) should also be 1.

Logic

- convert denary number to binary 
- split binary number into array of digits.
- initialise constant array of commands, in correct sequence.
- initialise empty array of commands to be returned
- reverse digit array, iterate through array, with index. If digit equals 1, add command at that index to the array of commands to be returned.
- return array of commands

=end

# Code

require 'pry'
class SecretHandshake

  COMMANDS = ['jump', 'close your eyes', 'double blink', 'wink']

  def initialize(denary)
    @invalid_input = true if denary =~ /[a-zA-Z]/ 
    denary = denary.to_i
    if denary > 16 
      @reversed = true
      denary -= 16
    end
    @binary_array = denary.to_s(2).chars
    while @binary_array.size < 4
      @binary_array.unshift('0')
    end
  end

  def commands
    return [] if @invalid_input
    @return_array = []
    @binary_array.each_with_index do |digit, index|
      @return_array << COMMANDS[index] if digit == '1'
    end
    @reversed ? @return_array : @return_array.reverse!
  end
end

# hats = SecretHandshake.new(31)
# p hats.commands

# Tests

require 'minitest/autorun'

class SecretHandshakeTest < Minitest::Test
  def test_handshake_1_to_wink
    handshake = SecretHandshake.new(1)
    assert_equal ['wink'], handshake.commands
  end

  def test_handshake_10_to_double_blink
    handshake = SecretHandshake.new(2)
    assert_equal ['double blink'], handshake.commands
  end

  def test_handshake_100_to_close_your_eyes
    handshake = SecretHandshake.new(4)
    assert_equal ['close your eyes'], handshake.commands
  end

  def test_handshake_1000_to_jump
    handshake = SecretHandshake.new(8)
    assert_equal ['jump'], handshake.commands
  end

  def test_handshake_11_to_wink_and_double_blink
    handshake = SecretHandshake.new(3)
    assert_equal ['wink', 'double blink'], handshake.commands
  end

  def test_handshake_10011_to_double_blink_and_wink
    handshake = SecretHandshake.new(19)
    assert_equal ['double blink', 'wink'], handshake.commands
  end

  def test_handshake_11111_to_double_blink_and_wink
    handshake = SecretHandshake.new(31)
    expected = ['jump', 'close your eyes', 'double blink', 'wink']
    assert_equal expected, handshake.commands
  end

  def test_valid_string_input
    handshake = SecretHandshake.new('1')
    assert_equal ['wink'], handshake.commands
  end

  def test_invalid_handshake
    handshake = SecretHandshake.new('piggies')
    assert_equal [], handshake.commands
  end
end