#Write a method smallest_integer which takes as its input an 
#Array of integers and returns the smallest integer in the Array.
def smallest_integer(array)
	smallint = array.sort
	puts smallint.first
end
	smallest_integer([5,6,7,8,1,-1])