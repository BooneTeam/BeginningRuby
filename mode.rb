#Write a method mode which takes an Array of numbers as its input 
#and returns an Array of the most frequent values.
#If there's only one most-frequent value, it returns a single-element Array.

def mode(array)
	mode = []
	nums = {}
	array.each do |i|
		if nums.has_key?(i)
			nums[i] = nums[i] +=1
			else
			nums[i] = 1 
		end

end
	sorted = nums.sort_by{ |k,v| v }
	sorted = sorted.reverse
	mode << sorted[0].first
	if sorted[0][1] == sorted[1][1]
	mode << sorted[1].first	
end
	mode.reverse
end
mode([4, 4, 5, 5, 5, 6, 6, 6, 7, 5])
