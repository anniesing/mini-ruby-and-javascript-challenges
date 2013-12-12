# Goal: What is the 10,001st prime number?

class NthPrimeNumber


end



def assert(arg_1, arg_2)
  puts arg_1 == arg_2
end

sixth_prime = NthPrimeNumber.new(6)
assert(sixth_prime.value, 13)