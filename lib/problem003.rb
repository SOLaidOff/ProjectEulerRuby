=begin
https://projecteuler.net/problem=3

Largest prime factor

Problem 3
 
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

# Things to change for every new problem: number in class name on first and last lines

require_relative 'euler_math'

class Problem003
  TARGET = 600851475143
  
  def do_problem
    some_low_factors_removed = TARGET
    divisor = 1
    
    while some_low_factors_removed != 1 do
      divisor += 1
      
      if EulerMath.isDivisible?(some_low_factors_removed, divisor)
        some_low_factors_removed /= divisor
      end
    end
      
    divisor
  end
end

puts problem = Problem003.new.do_problem()