require 'test/unit'
require 'integer_spiral'

class TestIntegerSpiral < Test::Unit::TestCase

  def test_zero
    spiral = IntegerSpiral.new
    assert_equal(
      [[0]],
      spiral.to_a
    )
  end

  def test_three
    spiral = IntegerSpiral.new 3
    assert_equal(
      [[0,1],
       [3,2]],
      spiral.to_a
    )
  end

  def test_eight
    spiral = IntegerSpiral.new 8
    assert_equal(
      [[6,7,8],
       [5,0,1],
       [4,3,2]],
      spiral.to_a
    )
  end

  def test_fifteen
    spiral = IntegerSpiral.new 15
    assert_equal(
      [[ 6, 7, 8, 9],
       [ 5, 0, 1,10],
       [ 4, 3, 2,11],
       [15,14,13,12]],
      spiral.to_a
    )
  end

  def test_fifteen
    spiral = IntegerSpiral.new 24
    assert_equal(
      [[20,21,22,23,24],
       [19, 6, 7, 8, 9],
       [18, 5, 0, 1,10],
       [17, 4, 3, 2,11],
       [16,15,14,13,12]],
      spiral.to_a
    )
  end

end
