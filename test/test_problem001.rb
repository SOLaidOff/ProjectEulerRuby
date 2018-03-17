require_relative '../lib/Problem001' # We need to access our code to test
require 'minitest/autorun'    # We need Ruby's unit testing library

# Test class based on http://www.se.rit.edu/~swen-250/activities/Ruby/Factorial/index.html
# MiniTest documentation (not sure if version correct) at https://ruby-doc.org/stdlib-2.1.0/libdoc/minitest/rdoc/Minitest.html
class TestProblem001 < MiniTest::Test
  # Test methods MUST start with test_
  
  TIME_LIMIT_IN_SECONDS = 60.0

  @@correct = 233168
  
  def test_correctness
    assert_equal @@correct, Problem001.new.do_problem(), "Wrong answer; should be #{@@correct}"
  end
  
  def test_speed
    start_time = Time.new
    Problem001.new.do_problem()
    end_time = Time.new
    
    assert (end_time - start_time) <= TIME_LIMIT_IN_SECONDS, "Program took longer than one minute to run."
  end
end