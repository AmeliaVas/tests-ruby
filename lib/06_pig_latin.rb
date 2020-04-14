def welcome
	print "Choose a word to translate to Aylanguage : "
	word = gets.chomp
	translate(word)
end

def translate (word)
	return "#{word.reverse}ay"
end