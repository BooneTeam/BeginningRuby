def product_odd(array)
	total = 1 
	array.each do |x|
		if x.odd?
		total *= x
	end
	end
	return total
end
product_odd([1,2,3])     # returns 3, because 2 is even
product_odd([0,-1,-10])  # returns -1, because 0 and -10 are even
product_odd([1,2,3,4,5])