require 'minitest/autorun'

class Test < MiniTest::Test
  def test_nil
    value = 3
    assert_nil(value)
  end
end