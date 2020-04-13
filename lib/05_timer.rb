def time_string
	print "Enter seconds to convert : "
	t = gets.chomp.to_i
	puts Time.at(t).utc.strftime("%H:%M:%S")
end