def welcome
	puts "Welcome to our calculator."
	puts "Please, choose an operation between :"
	puts "1 - Addition"
	puts "2 - Substraction"
	puts "3 - Multiplication"
	puts "4 - Division"
	puts "5 - Factorial"
	puts
	puts "9 - Cancel"
	ope = gets.chomp.to_i

	if ope == 1
		addition
	elsif ope == 2
		subtract
	elsif ope == 3
		multiply
	elsif ope == 4
		power
	elsif ope == 5
		factorial
	elsif ope == 9
		puts "Canceled."
	else
		puts "We don't understand your choice, please enter a number respecting to the action you want to do."
		welcome
	end

	puts "Do you want to perform another operation ?"
	print "Enter 'yes' or 'no' : "
	choice = gets.chomp
	if choice == "yes"
		welcome
	elsif choice == "no"
		puts "Thank you to use our calculator."
		puts "See you soon."
	else
		puts "We didn't understand your choice, we expected 'yes' or 'no' answer."
		puts "Thank you to use our calculator."
		puts "See you soon."
	end
end

def addition
	puts "How many numbers do you want to sum ?"
		print "> "
		$num = gets.chomp.to_i
		if $num == 2
			add
		elsif $num >= 3
			sum
		else
			puts "You can't choose a number less than 2."
			addition
		end
end

def add
	puts "Please enter the numbers you want to sum. Separate them by the 'enter key'."
	print "N° 1 > "
	n1 = gets.chomp.to_i
	print "N° 2 > "
	n2 = gets.chomp.to_i
	puts "#{n1} + #{n2} = #{n1 + n2}"
end

def sum
	puts "Please enter the numbers you want to sum. Separate them by the 'enter key'."
	order = 1
	my_array = []
	$num.times do
		print "N° #{order} > "
		n = gets.chomp.to_i
		my_array << n
		order = order + 1
	end
	puts "#{my_array.join(' + ')} = #{my_array.sum}"
end

def subtract
	puts "How many numbers do you want to subtract ?"
	print "> "
	choice = gets.chomp.to_i
	puts "Please enter the numbers you want to subtract. Separate them by the 'enter key'."
	order = 1
	my_array = []
	choice.times do
		print "N° #{order} > "
		n = gets.chomp.to_i
		my_array << n
		order = order + 1
	end
	puts "#{my_array.join(' - ')} = #{(my_array.drop 1).inject(my_array[0]){|x, y| x-y}}"
end

def multiply
	puts "How many numbers do you want to multiply ?"
	print "> "
	choice = gets.chomp.to_i
	puts "Please enter the numbers you want to multiply. Separate them by the 'enter key'."
	order = 1
	my_array = []
	choice.times do
		print "N° #{order} > "
		n = gets.chomp.to_i
		my_array << n
		order = order + 1
	end
	puts "#{my_array.join(' x ')} = #{(my_array.drop 1).inject(my_array[0]){|x, y| x*y}}"
end

def power
	puts "How many numbers do you want to split ?"
	print "> "
	choice = gets.chomp.to_i
	puts "Please enter the numbers you want to split. Separate them by the 'enter key'."
	order = 1
	my_array = []
	choice.times do
		print "N° #{order} > "
		n = gets.chomp.to_i
		my_array << n
		order = order + 1
	end
	puts "#{my_array.join(' : ')} = #{(my_array.drop 1).inject(my_array[0]){|x, y| x/y}}"
end

def factorial
	print "Choose a number : "
	numb = gets.chomp.to_i
	if numb <= 1
		res = 1
	elsif numb >= 2
		res = (1..numb).inject(:*)
	else
		puts "Error, we expect an entire positive number."
		factorial
	end
	puts "The factorial of #{numb} is #{res}."
end