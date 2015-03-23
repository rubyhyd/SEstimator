require 'minitest_helper'

class TestSupport< Minitest::Test
  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @array0 = []
    @array1 = [1, 1, 1, 1]
    @array2 = [1, 2, 3, 2, 3, 3]

    @hash0 = {}
    @hash1 = {1 => 4}
    @hash2 = {1 => 1, 2 => 2, 3 => 3}
  end

  def test_array_to_hash
    assert_equal @array0.to_hash, @hash0
    assert_equal @array1.to_hash, @hash1
    assert_equal @array2.to_hash, @hash2
  end

  def test_hash_to_ff
    assert_equal @hash0.to_ff, {}
    assert_equal @hash1.to_ff, {4 => 1}
    assert_equal @hash2.to_ff, {1 => 1, 2 => 1, 3 => 1}
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end