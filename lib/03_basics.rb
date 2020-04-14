def welcome
	puts "Choose an action :"
	puts "1 - Who is bigger ?"
	puts "2 - Reverse Upcase No LTA"
	puts "3 - Array 42"
	puts "4 - Magic Array"
	choice = gets.chomp.to_i
	if choice == 1
		puts "Choose 3 numbers. Separate them by enter key."
		print "a > "
		n1 = gets.chomp.to_i
		print "b > "
		n2 = gets.chomp.to_i
		print "c > "
		n3 = gets.chomp.to_i
		puts who_is_bigger(n1, n2, n3)
	elsif choice == 2
		print "Enter a sentence : "
		sentence = gets.chomp
		puts reverse_upcase_noLTA(sentence)
	elsif choice == 3
		array = []
		puts "How many numbers do you want to add to your array ?"
		print "> "
		numb = gets.chomp.to_i
		puts "Lets choose your numbers :"
		order = 1
		numb.times do
			print "N°#{order} > "
			choice = gets.chomp.to_i
			array << choice
			order = order + 1
		end
		puts "Your array : #{array}"
		puts "There is '42' in your array ?"
		puts array_42(array)
	elsif choice == 4
		arr = []
		puts "How many numbers do you want to add to your array ?"
		print "> "
		numb = gets.chomp.to_i
		puts "Lets choose your numbers :"
		order = 1
		numb.times do
			print "N°#{order} > "
			choice = gets.chomp.to_i
			arr << choice
			order = order + 1
		end
		puts magic_array(array)
	else
		puts "Error."
		welcome
	end
end

def who_is_bigger(a, b, c)
	order = ["a", "b", "c"]
	array = [a, b, c]
	my_hash = Hash[order.zip(array.map)]
	if a == nil or b == nil or c == nil
		return "nil detected"
	else
		return "#{my_hash.key(my_hash.values.max)} is bigger"
	end
end

def reverse_upcase_noLTA(sentence)
	return sentence.upcase.reverse.delete "LTA"
end

def array_42(array)
	return array.include?(42)
end

def magic_array(array)
	return array.flatten.uniq.sort.map{|b|2*b}.reject{|a| a % 3 == 0}
end