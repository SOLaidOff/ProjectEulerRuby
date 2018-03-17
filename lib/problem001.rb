=begin
https://projecteuler.net/problem=1

Title: Multiples of 3 and 5

Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end

require_relative 'euler_math'

class Problem001
  MIN = 1
  MAX = 999
  
  def do_problem
    sum = 0

    (MIN..MAX).each do |cur|
      if EulerMath.isDivisible?(cur, 3) || EulerMath.isDivisible?(cur, 5) # (cur % 3 == 0) || (cur % 5 == 0)
        sum += cur
      end
    end

    sum # Per unofficial but popular Ruby style guide (https://github.com/bbatsov/ruby-style-guide), "avoid return where not required for flow of control"
  end
end

puts problem = Problem001.new.do_problem() # The way Ruby scoping works, this cannot come at the top of the file (i.e. before class Problem001 is declared/defined)