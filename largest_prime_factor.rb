# Goal: Problem 3 from Euler Project
# What is the largest prime factor of the number 600851475143?

# strategy:
# prime number: num that is only divisible by 1 and itself
# factor: a number that divides evenly into the multiple

# so, looking fo factors of 600851475143 that happen to be prime.

# 1.) find all prime numbers up to 600851475143, then check to see if each 
# one divides evenly into 600851475143
# 2.) find all factors of 600851475143, then check which ones are prime.


def find_factors(number)
  factors =[]
  for i in 1..number
    factors << i if number % i == 0
  end
  factors
end

def is_prime?(num)
  find_factors(num).length == 2
end

def prime_factors(num)
  prime_factors = []
  find_factors(num).each do |n|
    prime_factors << n if is_prime?(n) && n != num
  end
  prime_factors
end

def largest_prime_factor(num)
  prime_factors(num).last
end


def assert (arg_1, arg_2)
  puts arg_1 == arg_2
end

assert(find_factors(1), [1])
assert(find_factors(6), [1, 2, 3, 6])
assert(is_prime?(1), false)
assert(is_prime?(2), true)
assert(is_prime?(8), false)
assert(is_prime?(11), true)

assert(prime_factors(1), [])
assert(prime_factors(2), [])
assert(prime_factors(8), [2])
assert(prime_factors(11), [])

assert(largest_prime_factor(1), nil)
assert(largest_prime_factor(8), 2)

puts largest_prime_factor(600851475143)
