def hello
	puts "Hello!"
end

def greet(name)
	puts "What's your name ?"
	print "> "
	thename = gets.chomp
	puts "Hello, #{thename}!"
end