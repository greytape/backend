require 'minitest/autorun'

class Test < MiniTest::Test
  def test_first
    value = 2
    assert value.odd?,'value is not odd'
  end
end

