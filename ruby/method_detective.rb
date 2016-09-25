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

#"The case of the disappearing first letter".replace("he case of the disappearing first letter")
#"The case of the disappearing first letter"[1, 40]
# => "he mystery of the missing first letter"

#"Elementary,    my   dear        Watson!".squeeze
#{}"Elementary,    my   dear        Watson!".replace("Elementary, my dear Watson!")
# => "Elementary, my dear Watson!"

# "z".ord
# => 122 
# The significance is that 122 is the integer ordinal of "z". An ordinal is the position of an
# item in a list, and they correspond to an ASCII value list.
#http://www.theasciicode.com.ar/ascii-printable-characters/lowercase-letter-z-minuscule-ascii-code-122.html

# "How many times does the letter 'a' appear in this string?".count("a")
# => 4