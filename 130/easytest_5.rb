require 'minitest/autorun'

class Test < MiniTest::Test
  def test_include
    value = ['abc', 'xyz']
    assert_includes(value,'abc')
  end
end