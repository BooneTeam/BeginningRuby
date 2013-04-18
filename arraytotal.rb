#Write a method total which takes an Array of numbers as its input and returns their total (sum).
def total(array)
	sum = 0
  array.each { |x| sum += x }
  puts sum
end
total([5,7,2])