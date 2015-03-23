require 'minitest_helper'

class TestChao92< Minitest::Test
  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @estimator = SEstimator::Chao92.new
    @samples = [5, 4, 5, 2, 5, 1, 0, 6, 2, 5, 3, 4, 5]
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def test_estimate
    assert (SEstimator::Chao92.estimate(@samples) - 13).abs < 1
  end

  def test_run
    assert_equal @estimator.run(@samples), SEstimator::Chao92.estimate(@samples)
  end

  def teardown
    # Do nothing
  end

end