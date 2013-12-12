class SumSquareDifference
end


def assert(arg_1, arg_2)
  puts arg_1 == arg_2
end


first_10 = SumSquareDifference(10)
assert(first_10.difference, 2640)