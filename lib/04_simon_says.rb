def echo (sentence)
	print "Enter a sentence : "
	sentence = gets.chomp
	puts "#{sentence}"
end

def shout (sentence)
	print "Enter a sentence : "
	sentence = gets.chomp
	puts "#{sentence.upcase}"
end

def repeat (sentence, n)
	print "Enter a sentence : "
	sentence = gets.chomp
	print "Choose a number : "
	n = gets.chomp.to_i
	n.times do 
		print "#{sentence} "
	end
end

def start_of_word (sentence, n)
	print "Enter a word : "
	sentence = gets.chomp
	print "Choose a number : "
	n = gets.chomp.to_i
	puts "#{sentence.chars(n)}"
end

def first_word (sentence)
	print "Enter a sentence : "
	sentence = gets.chomp
	puts "#{sentence.split.first}"
end

def titleize (sentence)
	print "Enter a sentence : "
	sentence = gets.chomp
	puts "#{sentence.titleize}"
end