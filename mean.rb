#Write a method mean which takes an Array of numbers as its input 
#and returns the average (mean) value as a Float.
def mean(array)
  total = 0
  array.each { |i| total+= i.to_f }
  total / array.count
  puts total
end
	mean([10,5,10])
