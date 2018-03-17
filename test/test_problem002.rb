require_relative '../lib/Problem002'
require 'minitest/autorun'

# Things to change for every new problem: number in class name on first line, class definition and each test, and answer in correctness test

class TestProblem002 < MiniTest::Test
  TIME_LIMIT_IN_SECONDS = 60.0

  @@correct = 4613732
  
  def test_correctness
    assert_equal @@correct, Problem002.new.do_problem(), "Wrong answer; should be #{@@correct}"
  end
  
  def test_speed
    start_time = Time.new
    Problem002.new.do_problem()
    end_time = Time.new
    
    assert (end_time - start_time) <= TIME_LIMIT_IN_SECONDS, "Program took longer than one minute to run."
  end
end