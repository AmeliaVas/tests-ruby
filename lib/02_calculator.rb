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
		puts "#{my_array.join(' - ')} = #{subtract (my_array)}"
	elsif ope == 3
		multiply
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
		puts "#{my_array.join(' x ')} = #{multiply (my_array)}"
	elsif ope == 4
		power
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
		puts "#{my_array.join(' : ')} = #{power (my_array)}"
	elsif ope == 5
		print "Choose a number : "
		numb = gets.chomp.to_i
		puts "The factorial of #{numb} is #{factorial (num)}."
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
	num = gets.chomp.to_i
	if num == 2
		puts "Please enter the numbers you want to sum. Separate them by the 'enter key'."
		print "N° 1 > "
		a = gets.chomp.to_i
		print "N° 2 > "
		b = gets.chomp.to_i
		add (a, b)
		puts "#{a} + #{b} = #{a + b}"
	elsif num >= 3
		puts "Please enter the numbers you want to sum. Separate them by the 'enter key'."
		order = 1
		my_array = []
			$num.times do
			print "N° #{order} > "
			n = gets.chomp.to_i
			my_array << n
			order = order + 1
			end
		sum (my_array)
		puts "#{my_array.join(' + ')} = #{my_array.sum}"
	else
		puts "You can't choose a number less than 2."
		addition
	end
end

def add (a, b)
	return a+b
end

def sum (array)
	return array.sum
end

def subtract (array)
	return (array.drop 1).inject(array[0]){|x, y| x-y}
end

def multiply (array)
	return (array.drop 1).inject(array[0]){|x, y| x*y}
end

def power (array)
	return (array.drop 1).inject(array[0]){|x, y| x/y}
end

def factorial (numb)
	if numb <= 1
		return res = 1
	elsif numb >= 2
		return res = (1..numb).inject(:*)
	end
end