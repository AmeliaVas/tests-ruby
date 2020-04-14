def Welcome
	print "Enter seconds to convert : "
	t = gets.chomp.to_i
	puts time_string(t)
end

def time_string(t)
	return Time.at(t).utc.strftime("%H:%M:%S")
end