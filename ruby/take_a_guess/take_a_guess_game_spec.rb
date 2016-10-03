=begin #### pseudocode a class for a word-guessing game ####

#Allow a user to enter a word
#Register the phrase as an instance variable of the class
#Scramble the word or phrase into a number of characters
#Display the word or phrase to the 2nd user BUT hide the characters with *** or ___
#Display a note saying that they only have 3 guesses to guess it right
#Upon entering a character
#	-Loop through the stored phrase and 
#		-If the letter exists in the phrase (and they haven't already entered it)
#		     -Provide the user with an updated visualization of the phrase with the letter included
#		-If the user has already entered the letter, ensure that this does not use up a guess
#		-Otherwise provide the user with a notice that they've used up a guess and provide the user with the previous visualization
#-If the user gets the full phrase to be uncovered within the number of guesses provided, print a congratulatory message
#	-Otherwise print "Game over"
=end

require_relative 'take_a_guess_game'

describe Take_a_guess do

	let(:take_a_guess) { Take_a_guess.new }
	
	it "converts a string to a number of underscores and dashes" do
		expect(take_a_guess.convert("test string")).to eq "____ ______"
	end

	it "determines an amount of guesses to allow the user based on string size (1/2)" do
		expect(take_a_guess.guess_amount("____ ______")).to eq 10
	end

	it "asks the user to guess a character, keeps track of the guess, removes a guess if it has not been guessed, and returns the uncovered string" do
		expect(take_a_guess.guess_char("s", "test string", "____ ______")).to eq "__s_ s_____"
	end

	it "tells the user they won if all letters have been uncovered before guesses are up" do
		expect(take_a_guess.won("test string", "test string", 5, 6)).to eq true
	end

end