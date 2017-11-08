require 'minitest/autorun'

class Test < MiniTest::Test
  def test_numeric
    value = 3
    assert_kind_of(Numeric, value)
  end
end