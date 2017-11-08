require 'minitest/autorun'

class Test < MiniTest::Test
  def test_numeric
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end
end