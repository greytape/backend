require 'minitest/autorun'

class List
  def process
    self
  end
end

class Test < MiniTest::Test
  def test_same
    list = List.new
    assert_same(list, list.process)
  end
end