#this is a program that takes an integer and returns a string of the appropriate roman numeral conversion
#it uses the modulus method and integer division which is cool I guess

# def roman_numeral(number)
# 	#evaluate the integer and see if it is divisible evenly by:
# 	#1000 (M), 500 (D), 100 (C), 50(L), 10(X), 5(V), 1(I)

# 	if number % 1000 == 0
# 		puts "M"
# 	elsif number % 500 == 0
# 		puts "D"
# 	elsif number % 100 == 0
# 		puts "C"
# 	elsif number % 50 == 0
# 		puts "L"
# 	elsif number % 10 == 0
# 		puts "X"
# 	elsif number % 5 == 0
# 		puts "V"
# 	# elsif number % 1 == 0
# 	# 	puts "I"
# 	else
# 		puts "I" * number
# 	# else
# 	# 	puts "This number is too complicated for this program right now."
# 	end
# end

# roman_numeral(5)
# roman_numeral(100)
# roman_numeral(4)
# roman_numeral(6)


def old_roman_numeral num
	roman = ''

	roman = roman + 'M' * (num / 1000)
	roman = roman + 'D' * (num % 1000 / 500)
	roman = roman + 'C' * (num % 500 / 100)
	roman = roman + 'L' * (num % 100 / 50)
	roman = roman + 'X' * (num % 50 / 10)
	roman = roman + 'V' * (num % 10 / 5)
	roman = roman + 'I' * (num % 5 / 1)

	roman
end

puts(old_roman_numeral(1999))
puts(old_roman_numeral(5))
puts(old_roman_numeral(230))

def roman_numeral num
	thous = (num / 1000)
	hunds = (num % 1000 / 100)
	tens = (num % 100 / 10)
	ones = (num % 10)

	roman = 'M' * thous
	if hunds == 9
		roman = roman + 'CM'
	elsif hunds == 4
		roman = roman + 'CD'
	else
		roman = roman + 'D' * (num % 1000 / 500)
		roman = roman + 'C' * (num % 500 / 100)
	end

	if tens == 9
		roman = roman + 'XC'
	elsif tens == 4
		roman = roman + 'XL'
	else
		roman = roman + 'L' * (num % 100 / 50)
		roman = roman + 'X' * (num % 50 / 10)
	end

	if ones == 9
		roman = roman + 'IX'
	elsif ones == 4
		roman = roman + 'IV'
	else
		roman = roman + 'V' * (num % 10 / 5)
		roman = roman + 'I' * (num % 5 / 1)
	end

	roman
end

puts roman_numeral(1999)
puts roman_numeral(1234)
puts roman_numeral(9)