def who_is_bigger(a, b, c)
	order = ["a", "b", "c"]
	puts "Choose 3 numbers. Separate them by enter key."
	print "a > "
	n1 = gets.chomp.to_i
	print "b > "
	n2 = gets.chomp.to_i
	print "c > "
	n3 = gets.chomp.to_i
	my_array = [n1, n2, n3]
	my_hash = Hash[order.zip(my_array.map)]
	puts "#{my_hash.key(my_hash.values.max)} is bigger."
end

def reverse_upcase_noLTA
	print "Enter a sentence : "
	sentence = gets.chomp
	puts "#{sentence.reverse}"
end

def array_42
	my_array = []
	puts "How many numbers do you want to add to your array ?"
	print "> "
	numb = gets.chomp.to_i
	puts "Lets choose your numbers :"
	order = 1
	numb.times do
		print "N°#{order} > "
		choice = gets.chomp.to_i
		my_array << choice
		order = order + 1
	end
	puts "Your array : #{my_array}"
	puts "There is '42' in your array ?"
	puts "#{my_array.include?(42)}"
end

def magic_array
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
	res = arr.flatten.uniq.sort.map{|b|2*b}.reject{|a| a % 3 == 0}
	puts "Result: #{res}"
end