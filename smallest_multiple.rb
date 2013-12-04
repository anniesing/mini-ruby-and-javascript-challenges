# Project Euler, Problem 5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# White Boarding:
# big picture:
# - need to check each and every number starting at 20 to see if it divides evenly by a through 20.
#   - start at 20 because having a dividend that is smaller than the divisor will never divide evenly.
# ideas:
# - what if we do this recursively.
#     if the number divides evenly by 1-20, then return that number,
#     else run the method again.

#     need to have a method that checks if current number divides evenly by 1-20,
#       probably make an array called divisors with 1-20.
#         loop through divisors array to check whether divisor divides evenly into current number
#           if it does, then return true
#           else, return false
#         which means we probably need to give this method an argument of current_number

#     have current_number increment by 1 each time the recursive if-statement runs without hitting the basecase.

# potential issues:
#   - it may take too long to run this thing recursively.
#   - running through 1-20 on every single number may take way too long also

def assert(arg1, arg2)
  puts arg1 == arg2
end


def divides_evenly?(dividend, divisor)
  return dividend % divisor == 0
end

assert(divides_evenly?(4,2), true)
assert(divides_evenly?(4,7), false)
assert(divides_evenly?(4,1), true)

def all_factors_divide_evenly?(num, divisors)
  no = []
  divisors.each do |divisor|
    if divides_evenly?(num, divisor) == false
      return false
    end
  end
  true
end

assert(all_factors_divide_evenly?(5, [1,2,3,4]), false)
assert(all_factors_divide_evenly?(8, [1,2,4,8]), true)
assert(all_factors_divide_evenly?(3, [1,2]), false)


def find_smallest_multiple(num=nil, range)
  divisors = (range).to_a
  num ||= divisors.last
  if all_factors_divide_evenly?(num, divisors)
    return num
  else
    num += 1
    find_smallest_multiple(num, range)
  end
end

assert(find_smallest_multiple(1..3),6)
assert(find_smallest_multiple(1..2),2)
# puts find_smallest_multiple(1..10) => 2520
# puts find_smallest_multiple(1..11) => stack level too deep
