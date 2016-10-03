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
	def guess_amount(obfuscated_phrase)
		obfuscated_phrase.split('').each do |character|
			if character == '_'
				@total_guesses_available += 1
			end
		end
		return @total_guesses_available
	end
	def guess_char(character, stored_phrase, obfuscated_phrase)
		@guess_array.each do |char|
			if char == character
				@guess_count -= 1
				break
			end
		end
		@guess_array << character
		index = 0
		stored_phrase.split('').each do |letter|
			if character == letter 
				obfuscated_phrase[index] = character
			end
			index += 1
		end
		@guess_count += 1
		@hidden_phrase = obfuscated_phrase
		return @hidden_phrase
	end
	def won(stored_phrase, obfuscated_phrase, guess_amount, number_of_guesses)
		@guess_count = guess_amount
		@total_guesses_available = number_of_guesses
		if stored_phrase == obfuscated_phrase
			return true
		else
			return false
		end
	end
end
