# Project Euler, Problem 5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class Multiple
  def initialize(range)
    @divisors = (range).to_a
    @num = @divisors.last
    @highest_divisor = @divisors.last
  end

  def divides_evenly_by?(divisor)
    return @num % divisor == 0
  end

  def all_factors_divide_evenly?
    @divisors.each do |divisor|
      if divides_evenly_by?(divisor) == false
        return false
      end
    end
    true
  end

  def find_smallest_multiple
    while true do
      return @num if all_factors_divide_evenly?
      @num += @highest_divisor
    end
  end

end


def assert(arg1, arg2)
  puts arg1 == arg2
end


test_1 = Multiple.new(1..3)
assert(test_1.find_smallest_multiple, 6)
test_2 = Multiple.new(1..2)
assert(test_2.find_smallest_multiple, 2)

test_3 = Multiple.new(1..10)
assert(test_3.find_smallest_multiple, 2520)


start_time = Time.now
semi_final_test = Multiple.new(1..20)
puts semi_final_test.find_smallest_multiple
end_time = Time.now
puts "That process took #{end_time - start_time} seconds"

