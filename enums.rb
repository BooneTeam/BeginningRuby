# Print the 1st, 3rd, 5th, 7th, etc. elements of a list on separate lines.
def print_odd_indexed_integers(array)
	array.each_with_index do |x,index|
		if index % 2 != 0; print x 
		end
	end

end

# Return the odd numbers from a list of integers.
def odd_integers(array)
	newarray = []
	array.each do |x|
		if x % 2 != 0; newarray << x 
	end
end
return newarray
end

# Return the first number from an Array that is less than a particular number - 'limit.'
def first_under(array, limit)
	array.reverse.each do |x|
		if x < limit; return x
			break
		end
	end

end 

print_odd_indexed_integers([1,2,3,4,5,6,7,8])
puts "\n"
print odd_integers([1,2,3,4,5,6,7,25])
puts "\n"
print first_under([1,2,3,4,5,6,7], 4)
