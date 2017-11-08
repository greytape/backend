=begin

Problem

input: single string (@key_word), array of strings(@words_to_be_checked)
output: array of strings (or empty)

- Given a list of test words, the program should be able to detect, all of them which are anagrams of the given word.
- If there are no matches, the program should return an empty array.
- If there is more than one match it should return an empty array.
- identical words are not anagrams
- anagrams are case insensitive. However, if the detected word is an anagram, it should be returned with it's original case intact.


Logic

- create new variable @modified_key_word so that it is downcased and letters sorted alphabetically
- iterate through @words_to_be_checked. 
- select strings from with @words_to_be_checked (String#select), using result of a block
  - check that word is not the same as @key_word, if it is skip
  - lower case letters (String#downcase), and letters sorted into alphabetical order (String#chars, Array#sort, Array#join), but retaining their original sequence
  - if resulting word matches @key_word, it should be selected.
- return array returned by select method


=end

# Code

require 'pry'

class Anagram

  def initialize(key_word)
    @key_word = key_word
    @modified_key_word = modify_word(key_word)
  end

  def match(words_to_be_checked)
    words_to_be_checked.select do |word|
      next if @key_word.downcase == word.downcase
      modify_word(word) == @modified_key_word
    end
  end

  def modify_word(word)
    word.downcase.chars.sort.join
  end

end

# Tests

require 'minitest/autorun'

class AnagramTest < Minitest::Test
  def test_no_matches
    detector = Anagram.new('diaper')
    assert_equal [], detector.match(%w(hello world zombies pants))
  end

  def test_detect_simple_anagram
    detector = Anagram.new('ant')
    anagrams = detector.match(%w(tan stand at))
    assert_equal ['tan'], anagrams
  end

  def test_detect_multiple_anagrams
    detector = Anagram.new('master')
    anagrams = detector.match(%w(stream pigeon maters))
    assert_equal %w(maters stream), anagrams.sort
  end

  def test_does_not_confuse_different_duplicates
    detector = Anagram.new('galea')
    assert_equal [], detector.match(['eagle'])
  end

  def test_identical_word_is_not_anagram
    detector = Anagram.new('corn')
    anagrams = detector.match %w(corn dark Corn rank CORN cron park)
    assert_equal ['cron'], anagrams
  end

  def test_eliminate_anagrams_with_same_checksum
    detector = Anagram.new('mass')
    assert_equal [], detector.match(['last'])
  end

  def test_eliminate_anagram_subsets
    detector = Anagram.new('good')
    assert_equal [], detector.match(%w(dog goody))
  end

  def test_detect_anagram
    detector = Anagram.new('listen')
    anagrams = detector.match %w(enlists google inlets banana)
    assert_equal ['inlets'], anagrams
  end

  def test_multiple_anagrams
    detector = Anagram.new('allergy')
    anagrams =
      detector.match %w( gallery ballerina regally clergy largely leading)
    assert_equal %w(gallery largely regally), anagrams.sort
  end

  def test_anagrams_are_case_insensitive
    detector = Anagram.new('Orchestra')
    anagrams = detector.match %w(cashregister Carthorse radishes)
    assert_equal ['Carthorse'], anagrams
  end
end


