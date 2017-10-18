=begin

Problem 

Input: one integer (n)
Output: array of integers, from 2 up to n

- Return array of all primes between input range
- Do so by carrying out specific algorithm, which works as follows:
  - Take initial number, find all multiples of that number lower than n2, put these in a list of multiples.
  - Take next number in n1..n2 range that is not included in list of multiples, and repeat process until process reaches n2
- I will assume that all inputs will be valid integers.

Logic

- Create class sieve, with primes method.
- Primes method
  - create range from 2 to n, then turn to array
  - initialize current_number at 2.
  - loop while current number < n
    - iterate through range with Enumerable#select
    - Only select numbers where !(number % current_number == 0).
    - increment current number
  - return array

=end

# Code

class Sieve
  def initialize(range_max)
    @range_max = range_max
  end

  def primes
    digit_array = (2..@range_max).to_a
    current_number = 2
    while current_number < @range_max
      digit_array.delete_if {|test_num| test_num % current_number == 0 && test_num != current_number }
      current_number += 1
    end
    digit_array
  end
end

# Tests

require 'minitest/autorun'

class SieveTest < Minitest::Test
  def test_a_few_primes
    expected = [2, 3, 5, 7]
    assert_equal expected, Sieve.new(10).primes
  end

  def test_primes
    expected = [
      2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59,
      61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127,
      131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191,
      193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257,
      263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331,
      337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401,
      409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467,
      479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563,
      569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631,
      641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709,
      719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797,
      809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877,
      881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967,
      971, 977, 983, 991, 997
    ]
    assert_equal expected, Sieve.new(1000).primes
  end
end



