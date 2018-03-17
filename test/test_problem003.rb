require_relative '../lib/Problem003'
require 'minitest/autorun'

# Things to change for every new problem: number in class name on first line, class definition and each test, and answer in correctness test

class TestProblem003 < MiniTest::Test
  TIME_LIMIT_IN_SECONDS = 60.0

  @@correct = 6857
  
  def test_correctness
    assert_equal @@correct, Problem003.new.do_problem(), "Wrong answer; should be #{@@correct}"
  end
  
  def test_speed
    start_time = Time.new
    Problem003.new.do_problem()
    end_time = Time.new
    
    assert (end_time - start_time) <= TIME_LIMIT_IN_SECONDS, "Program took longer than one minute to run."
  end
end