# Goal: Problem 2 from ProjectEuler
# Find the sum of the even-valued fibonacci terms whose values do not exceed four million.

def get_fibonacci_sequence_with_max_term_val_of(value)
  sequence = [1,2]
  while sequence.last < value
    sequence << (sequence.last + sequence[sequence.length - 2])
  end
  if sequence.last > value
    sequence.pop
  end
  sequence
end

def assert(argument1, argument2)
  if argument1 == argument2
    puts true
  else
    puts false
  end
end

assert(get_fibonacci_sequence_with_max_term_val_of(5), [1,2,3,5])
assert(get_fibonacci_sequence_with_max_term_val_of(4), [1,2,3])
assert(get_fibonacci_sequence_with_max_term_val_of(6), [1,2,3,5])

def find_even_terms_until(maximum_term_value)
  entire_sequence = get_fibonacci_sequence_with_max_term_val_of(maximum_term_value)
  even_terms = []
  entire_sequence.each do |term|
    even_terms << term if term % 2 == 0
  end
  even_terms
end

assert(find_even_terms_until(5), [2])
assert(find_even_terms_until(4), [2])
assert(find_even_terms_until(8), [2,8])
