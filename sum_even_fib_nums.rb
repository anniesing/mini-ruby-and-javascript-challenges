# Goal: Problem 2 from ProjectEuler
# Find the sum of the even-valued fibonacci terms whose values do not exceed four million.

class FibonacciSequence
  
  def initialize(max_term_value)
    @sequence = [1,2]
    @max_term_value = max_term_value
  end
  
  def next_term
    @sequence.last + @sequence[@sequence.length - 2]
  end

  def populated_sequence
    while next_term <= @max_term_value
      @sequence << next_term
    end
    @sequence
  end

  def even_terms
    terms = []
    populated_sequence.each do |term|
      terms << term if term % 2 == 0
    end
    terms
  end

  def sum_even_terms
    even_terms.inject(:+)
  end
end


def assert(argument1, argument2)
  puts (argument1 == argument2 ? true : false)
end

sequence_1 = FibonacciSequence.new(5)
sequence_2 = FibonacciSequence.new(4)
sequence_3 = FibonacciSequence.new(8)
test_sequence = FibonacciSequence.new(4000000)

assert(sequence_1.populated_sequence, [1,2,3,5])
assert(sequence_2.populated_sequence, [1,2,3])
assert(sequence_3.populated_sequence, [1,2,3,5,8])

assert(sequence_1.even_terms, [2])
assert(sequence_2.even_terms, [2])
assert(sequence_3.even_terms, [2,8])

assert(sequence_1.sum_even_terms,2)
assert(sequence_2.sum_even_terms,2)
assert(sequence_3.sum_even_terms,10)

assert(test_sequence.sum_even_terms, 4613732)
