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
#