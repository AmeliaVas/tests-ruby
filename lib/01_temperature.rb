def temperature_conversion_functions
	puts "Welcome to our temperature conversion program."
	puts "You want to convert :"
	puts "1 - Celsius degrees to Fahrenheit degrees"
	puts "2 - Fahrenheit degrees to Celsius degrees"
	puts "3 - Cancel"
	print "Your number choice : "
	type = gets.chomp.to_i
	puts "What temperature do you whant to convert ?"
	print "> "
	temp = gets.chomp.to_f
	sprintf("%.1d", temp)

	if type == 1
		ctof = temp * 9/5 + 32
		sprintf('%0.1f', ctof)
		puts "#{temp}°C = #{ctof}°F"
		puts "Do you want to convert another temperature ?"
		print "Enter 'yes' or 'no' : "
		choice = gets.chomp
		if choice == "yes"
			temperature_conversion_functions
		elsif choice == "no"
			puts "Thank you to use our temperature conversion program."
			puts "See you soon."
		else
			puts "We didn't understand your choice, we expected 'yes' or 'no' answer."
			puts "Thank you to use our temperature conversion program."
			puts "See you soon."
		end
	elsif type == 2
		ftoc = (temp - 32) * 5/9
		sprintf('%0.1f', ftoc)
		puts "#{temp}°F = #{ftoc}°C"
		puts "Do you want to convert another temperature ?"
		print "Enter 'yes' or 'no' : "
		choice = gets.chomp
		if choice == "yes"
			temperature_conversion_functions
		elsif choice == "no"
			puts "Thank you to use our temperature conversion program."
			puts "See you soon."
		else
			puts "We didn't understand your choice, we expected 'yes' or 'no' answer."
			puts "Thank you to use our temperature conversion program."
			puts "See you soon."
		end
	elsif type == 3
		puts "Thank you to use our temperature conversion program."
		puts "See you soon."
	else
		puts "We don't understand your choice, please enter the number '1', '2' or '3' depending of the action you want to do."
		temperature_conversion_functions
	end
end
