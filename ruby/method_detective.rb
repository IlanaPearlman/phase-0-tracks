# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1,"o")
# => “zoom”
"zom".replace("zoom")
# => “zoom”
"zom".sub(/o/,"oo")
# => “zoom”

"enhance".center("    enhance    ".length)
# => "    enhance    "
("enhance".ljust("enhance".length + 4)).rjust(("enhance".ljust("enhance".length + 4)).length + 4)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
"Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
#=> "the usual suspects"
"the usual".+(" suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"
" suspects".insert(0,"the usual")

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
"The case of the disappearing last letter".slice(0...-1)
# => "The case of the disappearing last lette"
"The case of the disappearing last letter".slice(0..-2)
# => "The case of the disappearing last lette"
"The case of the disappearing last letter"[0..-2]
# => "The case of the disappearing last lette"
"The case of the disappearing last letter"[0...-1]
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..-1)
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".slice(1...-2)
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".[1..-1]
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".[1...-2]
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".gsub(/[ ]{2,}/, " ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count("a")
# => 4