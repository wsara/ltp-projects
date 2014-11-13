#a program that accepts lists of words and then sorts them

puts "Enter a word, or 'quit' to exit."
words = []
	
while true
	input = gets.chomp
	if input.downcase == 'quit' || input == ''
		break
	else
		words.push input
	end
end

puts "Here they are, sorted:"
puts words.sort
