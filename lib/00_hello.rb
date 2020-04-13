def welcome
	puts "What's your name ?"
	print "> "
	name = gets.chomp
	greet
end

def hello
	puts "Hello!"
end

def greet(name)	
	puts "Hello, #{name}!"
end