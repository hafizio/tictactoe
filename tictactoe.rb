require_relative 'board'

puts "Welcome to TicTacToe!"
players = ['X', 'O']
current_player = players[rand(2)]
b = Board.new(current_player)
b.display
puts
