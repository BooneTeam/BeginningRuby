#Check, if a number is part of the Fibonacci sequence. 
#0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 
#1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, ...

def is_fibonacci?(n)
	x = 0
	y = 1
	z = 0
	fibseq = [0,1]
	while z <= n
		z = x + y
		x = y + z
		y = z + x
		fibseq << z << x << y
	end
	if fibseq.include?(n)
		 true
	else
		 false
	end
end
is_fibonacci?(10946)

