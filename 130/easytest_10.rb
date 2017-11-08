require 'minitest/autorun'

class Test < MiniTest::Test
  def test_refute
    list = ['abc','xyz']
    refute_includes(list, 'xyz')
  end
end