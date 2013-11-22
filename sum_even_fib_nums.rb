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
