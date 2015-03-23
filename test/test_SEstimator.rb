require 'minitest_helper'

class TestSEstimator < Minitest::Test

  def test_a_version_number
    refute_nil ::SEstimator::VERSION
  end

end
