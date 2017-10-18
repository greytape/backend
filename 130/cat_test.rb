require 'minitest/autorun'
require_relative 'cat'

class CatTest < MiniTest::Test
  def setup
    @kitty = Cat.new('Kitty', 1)
  end

  def test_is_cat; end

  def test_name
    assert_equal('Kitty', @kitty.name)
  end

  def test_miaow; 
    assert_includes(@kitty.miaow, ' is miaowing.')
  end

  def test_raises_error
    assert(Cat.new == ArgumentError)
  end

  def test_is_not_purrier
    patch = Cat.new('Patch', 5)
    milo = Cat.new('Milo', 3)
    assert(patch.purr_factor > milo.purr_factor)
  end

end