=begin

Problem

I: string
O: Fixnum

- compare two different strings. Return the number of different characters between them.
- if the characters are of different lengths, only consider differences in the first n characters, where n is the length of the shorter string

Logic

- initialise initial_seq and compare_seq
- initialise hamming_distance at 0
- initialise shortest_sequence_size as min of both string sizes (String#size, Array#min)
- convert both sequences into array (String#to_a).
- iterate through compare_seq with index (Array#each_with_index)
  - increment hamming_distance if element does not equal equivalent element in initial_seq
  - break if index is greater than shortest_sequence_size

=end

# Code

require 'pry'

class DNA
  def initialize(initial_string)
    @initial_seq = initial_string.chars
  end

  def hamming_distance(compare_string)
    hamming_distance = 0
    @compare_seq = compare_string.chars
    @shortest_sequence_size = [@initial_seq.size, @compare_seq.size].min
    @compare_seq.each_with_index do |letter, index|
      hamming_distance += 1 if letter != @initial_seq[index]
      break if index >= (@shortest_sequence_size - 1)
    end
    hamming_distance
  end
end

# Tests

require 'minitest/autorun'

class DNATest < Minitest::Test
  def test_no_difference_between_empty_strands
    assert_equal 0, DNA.new('').hamming_distance('')
  end

  def test_no_difference_between_identical_strands
    assert_equal 0, DNA.new('GGACTGA').hamming_distance('GGACTGA')
  end

  def test_complete_hamming_distance_in_small_strand
    assert_equal 3, DNA.new('ACT').hamming_distance('GGA')
  end

  def test_hamming_distance_in_off_by_one_strand
    strand = 'GGACGGATTCTGACCTGGACTAATTTTGGGG'
    distance = 'AGGACGGATTCTGACCTGGACTAATTTTGGGG'
    assert_equal 19, DNA.new(strand).hamming_distance(distance)
  end

  def test_small_hamming_distance_in_middle_somewhere
    assert_equal 1, DNA.new('GGACG').hamming_distance('GGTCG')
  end

  def test_larger_distance
    assert_equal 2, DNA.new('ACCAGGG').hamming_distance('ACTATGG')
  end

  def test_ignores_extra_length_on_other_strand_when_longer
    assert_equal 3, DNA.new('AAACTAGGGG').hamming_distance('AGGCTAGCGGTAGGAC')
  end

  def test_ignores_extra_length_on_original_strand_when_longer
    strand = 'GACTACGGACAGGGTAGGGAAT'
    distance = 'GACATCGCACACC'
    assert_equal 5, DNA.new(strand).hamming_distance(distance)
  end

  def test_does_not_actually_shorten_original_strand
    dna = DNA.new('AGACAACAGCCAGCCGCCGGATT')
    assert_equal 1, dna.hamming_distance('AGGCAA')
    assert_equal 4, dna.hamming_distance('AGACATCTTTCAGCCGCCGGATTAGGCAA')
    assert_equal 1, dna.hamming_distance('AGG')
  end
end