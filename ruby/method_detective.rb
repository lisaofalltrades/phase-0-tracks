# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#"iNvEsTiGaTiOn".swapcase

#"zom".insert(2, 'o')
#"zom".replace "zoom"
#"zom".gsub(/[o]/, "o" => "oo")
#"zom".sub "o", "oo" #
# => “zoom”

#"enhance".center(15)
#"enhance".replace("    enhance    ")
# => "    enhance    "

#"Stop! You’re under arrest!".upcase
#"Stop! You’re under arrest!".replace("STOP! YOU’RE UNDER ARREST!")
# => "STOP! YOU’RE UNDER ARREST!"

#"the usual".replace("the usual suspects")
#"the usual".insert(9, " suspects")
#"the usual" << " suspects"
#=> "the usual suspects"

#" suspects".replace("the usual suspects")
#" suspects".insert(0, "the usual")
#" suspects".prepend("the usual")
# => "the usual suspects"

#"The case of the disappearing last letter".replace("The case of the disappearing last lette")
#"The case of the disappearing last letter"[0, 39]
#"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4