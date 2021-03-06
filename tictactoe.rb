require_relative 'board'

#start of game
puts "Welcome to TicTacToe!"
players = ['X', 'O']
current_player = players[rand(2)]
b = Board.new(current_player)
b.display
puts

#gameplay(main: will be loop till the end of game)
until b.full? && b.winner
  b.ask_player_for_move(current_player)
  current_player = b.get_next_turn
  b.display
end

#winner emerged
if b.winner
  puts "Player " + b.get_next_turn + " wins"
else
  puts "Tie Game"
end

#end of game
puts "Game Over"
