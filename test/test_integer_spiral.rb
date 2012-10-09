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

  def test_zero_to_s
    spiral = IntegerSpiral.new
    assert_equal(
      "0",
      spiral.to_s
    )
  end

  def test_one
    spiral = IntegerSpiral.new 1
    assert_equal(
      [[  0,  1],
       [nil,nil]],
      spiral.to_a
    )
  end

  def test_one_to_s
    spiral = IntegerSpiral.new 1
    assert_equal(
      "0 1",
      spiral.to_s
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

  def test_three_to_s
    spiral = IntegerSpiral.new 3
    assert_equal(
      "0 1\n3 2",
      spiral.to_s
    )
  end

  def test_four
    spiral = IntegerSpiral.new 4
    assert_equal(
      [[nil,nil,nil],
       [nil,  0,  1],
       [  4,  3,  2]],
      spiral.to_a
    )
  end

  def test_four_to_s
    spiral = IntegerSpiral.new 4
    assert_equal(
      "  0 1\n4 3 2",
      spiral.to_s
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

  def test_eight_to_s
    spiral = IntegerSpiral.new 8
    assert_equal(
      "6 7 8\n5 0 1\n4 3 2",
      spiral.to_s
    )
  end

  def test_nine
    spiral = IntegerSpiral.new 9
    assert_equal(
      [[  6,  7,  8,  9],
       [  5,  0,  1,nil],
       [  4,  3,  2,nil],
       [nil,nil,nil,nil]],
      spiral.to_a
    )
  end

  def test_nine_to_s
    spiral = IntegerSpiral.new 9
    assert_equal(
      "6 7 8 9\n5 0 1  \n4 3 2  ",
      spiral.to_s
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

  def test_fifteen_to_s
    spiral = IntegerSpiral.new 15
    assert_equal(
      " 6  7  8  9\n 5  0  1 10\n 4  3  2 11\n15 14 13 12",
      spiral.to_s
    )
  end

  def test_sixteen
    spiral = IntegerSpiral.new 16
    assert_equal(
      [[nil,nil,nil,nil,nil],
       [nil,  6,  7,  8,  9],
       [nil,  5,  0,  1, 10],
       [nil,  4,  3,  2, 11],
       [ 16, 15, 14, 13, 12]],
      spiral.to_a
    )
  end

  def test_twentyfour
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
