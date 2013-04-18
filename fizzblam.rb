def fizzblam
	1.upto(1000).each do |x| 
		if x % 5 == 0 && x % 7 == 0
			print "Fizzblam"
		elsif x % 5 == 0
			print "Fizz"
		elsif x % 7 == 0
			print "Blam"
		else
			print x
		end
	end
end
fizzblam