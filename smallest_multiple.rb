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

# stack level was too deep once it started running beyond the range of 1-10,
# so I am going to try to make a module in an attempt to not repeat certain operations,
# instead saving results in instance variables.

module Multiple
  @num = 1

  def self.divides_evenly?(dividend, divisor)
    return dividend % divisor == 0
  end

  def self.all_factors_divide_evenly?(num, divisors)
    no = []
    divisors.each do |divisor|
      if divides_evenly?(num, divisor) == false
        return false
      end
    end
    true
  end

  def self.find_smallest_multiple(range)
    divisors = (range).to_a
    p @num
    if all_factors_divide_evenly?(@num, divisors)
      # p "inside!"
      return @num
    else
      @num += 1
      find_smallest_multiple(range)
    end
  end

end


def assert(arg1, arg2)
  puts arg1 == arg2
end

include Multiple
# assert(Multiple.divides_evenly?(4,2), true)
# assert(Multiple.divides_evenly?(4,7), false)
# assert(Multiple.divides_evenly?(4,1), true)

# assert(Multiple.all_factors_divide_evenly?(5, [1,2,3,4]), false)
# assert(Multiple.all_factors_divide_evenly?(8, [1,2,4,8]), true)
# assert(Multiple.all_factors_divide_evenly?(3, [1,2]), false)

assert(Multiple.find_smallest_multiple(1..3),6)
p Multiple.find_smallest_multiple(1..2)
assert(Multiple.find_smallest_multiple(1..2),2)

# Pooop, I didn't realize that when you make a module, the instantiated variables don't also change with each instantiation of the module
# In line 76, @num is still set to 6 from line 75.
# I think I'll make this a class now, so I can instantiate a new instance with the right range


# assert(Multiple.find_smallest_multiple(1..10), 2520)
# puts find_smallest_multiple(1..11) => stack level too deep