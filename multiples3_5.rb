def multiples3_5()
	array = 1.upto(999).to_a
	newarray = []
	sum = 0
	array.each do |x|
		if x % 3 == 0
			newarray << x
		elsif x % 5 == 0
			newarray << x
		end
		end
		newarray.each do |x| 
			sum += x
			end
			puts sum 
end
multiples3_5