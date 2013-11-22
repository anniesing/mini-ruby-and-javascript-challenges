# Goal of Challenge:
# Problem 1 from Project Euler:
# Find the sum of all the multiples of 3 or 5 below 1000.

def find_multiples_of(factor, maximum_number)
  all_numbers = (0..maximum_number).to_a
  multiples = []
  all_numbers.each do |num|
    multiples << num if num % factor == 0
  end
  multiples
end

def find_sum_of_unique_multiples(factor1, factor2, maximum_number)
  all_multiples = find_multiples_of(factor1, maximum_number) + find_multiples_of(factor2, maximum_number)
  unique_multiples = all_multiples.uniq
  unique_multiples.reduce(:+)
end

puts "The sum of all the multiples of 3 or 5 below 1000 is: #{find_sum_of_unique_multiples(3, 5, 999)}"

