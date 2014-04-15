require 'minitest/autorun'
require 'turn/autorun'
require_relative 'board'

class BoardTest < MiniTest::Unit::TestCase

  def setup
    @board = Board.new('user')
  end

  # def test_board_is_an_array
  #   assert_kind_of Array, @board
  # end

  # def test_board_size
  #   assert_equal @board.size, 3
  # end

  def test_board_is_full
    assert_equal @board.full?, true
  end

  def test_board_is_not_empty
    @board[1][1] = 'X'
    assert_equal @board.full?, false
  end
end
