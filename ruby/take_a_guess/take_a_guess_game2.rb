class Game
	TOTAL_ROUNDS = 3
end

puts """
Welcome to the Guessing Game!
Try to guess the word.
"""
print "What is your name? "
name = gets.chomp
player = Player.new(name)
game = Game.new(player)

while !game.done? do
	puts ""
	puts "------> Round ##{game.round}"
	puts ""
	if game.get_high_number
		if game.get_guess_count
			game.prepare_computer_number
			while !game.round_done? do
				puts ""
				game.get_player_guess
				game.show_results
			end
			game.next_round
		end
	end
end
puts ""
game.print_final_score