require 'minitest/autorun'
require_relative 'text'

class TestText < Minitest::Test
  def setup
    @file = File.open('text.txt', 'r')
  end

  def test_swap
    sample = Text.new(@file.read)
    es_in_original_text = sample.text.count('e')
    as_in_original_text = sample.text.count('a')
    es_in_swapped_text = sample.swap('a','e').count('e')
    assert_equal(as_in_original_text + es_in_original_text, es_in_swapped_text)
  end

  def test_word_count
    sample = Text.new(@file.read)
    check = File.read('text.txt')
    assert_equal(check.split.count, sample.word_count)
  end

  def teardown
    @file.close
  end

end