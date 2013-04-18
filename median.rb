#Write a method median which takes an Array of numbers as its input 
#and returns the median value.

def median(array)
order = array.sort
total = array.count
if total.even?
	center = array.count / 2.0
	median = (array[center] + array[center-1]) / 2.0 
	median
else
center = array.count / 2.0
	 center = center.round
	 array[center-1]
end

end
median([2,3,6,9,6,6,3,1])