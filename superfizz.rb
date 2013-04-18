#FizzBuzz is a classic programming exercise.

#The usual example asks the developer to write a program which prints out each number from 1 to 100.
#But for multiples of 3 print 'Fizz' instead of the number and for multiples of 5 print 'Buzz'. For numbers which are 
#multiples of both 3 and 5 print 'FizzBuzz'.
#This exercise has a little twist. Write a method called super_fizzbuzz which takes as its input an Array of integers.
#It should return a "fizzbuzzed" Array, i.e., the array is identical to the input with the following substitutions:

def super_fizzbuzz(array)
  newarray = []
  array.each do |x|
  	if x % 15 == 0
  		 newarray << "Fizzbuzz"
  	elsif x % 5 == 0
  	 newarray << "Buzz"
	elsif x % 3 == 0
		newarray << "Fizz"
	else
	newarray << x
	end
end
puts newarray
puts array
array.replace(newarray)
puts array
end
super_fizzbuzz([30,9,20,1])