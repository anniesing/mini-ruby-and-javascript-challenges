class SumSquareDifference
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = (1..@num).inject { |sum, n| sum + n }
    sum**2
  end

  def sum_of_squares
    (1..@num).inject { |sum, n| sum + n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end


def assert(arg_1, arg_2)
  puts arg_1 == arg_2
end


first_10 = SumSquareDifference.new(10)
assert(first_10.difference, 2640)

assert(first_10.square_of_sum, 3025)

assert(first_10.sum_of_squares, 385)