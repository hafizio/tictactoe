require 'minitest/autorun'
require 'turn/autorun'
require_relative 'board'

class BoardTest < MiniTest::Unit::TestCase

	def setup
		@board = Board.new('user').board
	end
	
	def test_board_is_an_array
		assert_kind_of Array, @board
	end
	
	def test_board_size
		assert_equal @board.size, 3
	end
end 
