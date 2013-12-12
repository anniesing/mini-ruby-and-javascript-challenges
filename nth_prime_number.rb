# Goal: What is the 10,001st prime number?

class NthPrimeNumber
  def initialize(n)
    @n = n
  end

  def prime?(num)
    return false if num == 1
    return true if num == 2
    for i in 2..num-1 do
      return false if num % i == 0
    end
    true
  end

  def prime_numbers
    primes = []
    current_num = 2
    until primes.length == @n do
      primes << current_num if prime?(current_num)
      current_num += 1
    end
    primes
  end

  def value
    prime_numbers.last
  end
end



def assert(arg_1, arg_2)
  puts arg_1 == arg_2
end

sixth_prime = NthPrimeNumber.new(6)
assert(sixth_prime.value, 13)
assert(sixth_prime.prime_numbers, [2,3,5,7,11,13])
assert(sixth_prime.prime?(2), true)
assert(sixth_prime.prime?(3), true)
assert(sixth_prime.prime?(1), false)
assert(sixth_prime.prime?(4), false)
assert(sixth_prime.prime?(10), false)