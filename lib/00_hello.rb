def welcome
	puts "What's your name ?"
	print "> "
	name = gets.chomp
	greet
end

def hello
	return "Hello!"
end

def greet(name)	
	return "Hello, #{name}!"
end