class Take_a_guess
	def initialize
		@hidden_phrase = ''
		@actual_phrase = ''
		@guess_count = 0
		@total_guesses_available = 0
		@guess_array = []
	end

	def convert(word_or_phrase)
		@hidden_phrase = []
		word_or_phrase.downcase.split('').each do |character|
			if character == ' '
				@hidden_phrase << ' '
			else
				@hidden_phrase << '_'
			end
		end
		@hidden_phrase = @hidden_phrase.join
		return @hidden_phrase
	end
end
