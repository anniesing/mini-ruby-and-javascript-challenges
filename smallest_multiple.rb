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