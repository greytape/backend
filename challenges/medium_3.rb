=begin

Problem

Pig latin!

I: string
O: string

- if word begins with vowel sound, return word with 'ay' appended at end
- if word begins with consonant sound, put that consonant sound at end of word, then 'ay' after that

Logic

- create find_first_vowel method
  - take input string, split into array of characters
  - iterate through array, and return index of first vowel
- create translate method
  - if find_first_vowel == 1, return input stirng + 'ay'
  - else, return concatenated substrings, with 'ay' appended

=end

# Code

class PigLatin
  def self.translate(english_string)
    english_string.split(' ').
  end

  def self.translate(english_word)
    first_vowel_place = find_first_vowel(english_string)
    if first_vowel_place == 0 
      english_string + 'ay'
    else
      english_string[first_vowel_place..-1] + english_string[0...first_vowel_place] + 'ay'
    end
  end

  def self.find_first_vowel(english_string)
    english_string =~ /[aeiou]/
  end
end

# Tests

require 'minitest/autorun'

class PigLatinTest < Minitest::Test
  def test_word_beginning_with_a
    assert_equal 'appleay', PigLatin.translate('apple')
  end

  def test_other_word_beginning_e
    assert_equal 'earay', PigLatin.translate('ear')
  end

  def test_word_beginning_with_p
    assert_equal 'igpay', PigLatin.translate('pig')
  end

  def test_word_beginning_with_k
    assert_equal 'oalakay', PigLatin.translate('koala')
  end

  def test_word_beginning_with_ch
    assert_equal 'airchay', PigLatin.translate('chair')
  end

  def test_word_beginning_with_qu
    assert_equal 'eenquay', PigLatin.translate('queen')
  end

  def test_word_with_consonant_preceding_qu
    assert_equal 'aresquay', PigLatin.translate('square')
  end

  def test_word_beginning_with_th
    assert_equal 'erapythay', PigLatin.translate('therapy')
  end

  def test_word_beginning_with_thr
    assert_equal 'ushthray', PigLatin.translate('thrush')
  end

  def test_word_beginning_with_sch
    assert_equal 'oolschay', PigLatin.translate('school')
  end

  def test_translates_phrase
    assert_equal 'ickquay astfay unray', PigLatin.translate('quick fast run')
  end

  def test_word_beginning_with_ye
    assert_equal 'ellowyay', PigLatin.translate('yellow')
  end

  def test_word_beginning_with_yt
    assert_equal 'yttriaay', PigLatin.translate('yttria')
  end

  def test_word_beginning_with_xe
    assert_equal 'enonxay', PigLatin.translate('xenon')
  end

  def test_word_beginning_with_xr
    assert_equal 'xrayay', PigLatin.translate('xray')
  end
end