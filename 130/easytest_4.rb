require 'minitest/autorun'

class Test < MiniTest::Test
  def test_empty
    value = []
    assert_equal(true, value.empty?)
  end
end
