require 'minitest/autorun'
require 'turn/autorun'
require_relative 'board'

class BoardTest < MiniTest::Unit::TestCase

  def setup
    @b = Board.new('user')
    @board = @b.board
  end

  def test_board_is_an_array
    assert_kind_of Array, @board
  end

  def test_board_size
    assert_equal @board.size, 3
  end

  # def test_board_is_full
  #   assert_equal @b.full?, true
  # end

  def test_board_is_not_empty
    @board[1][1] = 'X'
    assert_equal @b.full?, false
  end
end
