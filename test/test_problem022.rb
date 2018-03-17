require_relative '../lib/Problem022'
require 'minitest/autorun'

# Things to change for every new problem: number in class name on first line, class definition and each test, and answer in correctness test

class TestProblem022 < MiniTest::Test
  TIME_LIMIT_IN_SECONDS = 60.0

  @@correct = 871198282
  
  def test_correctness
    assert_equal @@correct, Problem022.new.do_problem(), "Wrong answer; should be #{@@correct}"
  end
  
  def test_speed
    start_time = Time.new
    Problem022.new.do_problem()
    end_time = Time.new
    
    assert (end_time - start_time) <= TIME_LIMIT_IN_SECONDS, "Program took longer than one minute to run."
  end
end