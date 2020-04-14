def welcome
	print "Enter a sentence : "
	sentence = gets.chomp
	print "Choose an action :"
	print "1 - Echo"
	print "2 - Shout"
	print "3 - Repeat"
	print "4 - Start of word"
	print "5 - First word"
	print "6 - Titleize"
	puts "> "
	choice = gets.chomp.to_i
	if choice == 1
		puts echo(sentence)
	elsif choice == 2
		puts shout(sentence)
	elsif choice == 3
		print "Choose a number : "
		n = gets.chomp.to_i
		puts repeat(sentence,n)
	elsif choice == 4
		print "Choose a number : "
		n = gets.chomp.to_i
		puts start_of_word(sentence,n)
	elsif choice == 5
		first_word(sentence)
	elsif choice == 6
		titleize(sentence)
	end
	puts "Thank you to use our program."
end

def echo (sentence)
	return sentence
end

def shout (sentence)
	return sentence.upcase
end

def repeat (sentence, n)
res =[]
n.times do 
	res << sentence
end
return res.join(" ")
end

def start_of_word (sentence, n)
	return sentence[0,n]
end

def first_word (sentence)
	return sentence.split.first
end

def titleize (sentence)
	return sentence.titleize
end