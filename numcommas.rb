#Write a method separate_comma which takes an integer as its input 
#and returns a comma-separated integer as a string.

def separate_comma(number)
	number = number.to_s.reverse
	number = number.split("")
	spot = 3
	while spot < number.length
		
	number = number.insert(spot,",")
	spot += 4
end
	puts number.reverse.join{""}
	

end
puts separate_comma(100)
puts separate_comma(0)
puts separate_comma(1000000)
puts separate_comma(1000)

