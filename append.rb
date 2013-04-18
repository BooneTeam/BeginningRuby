def append ( array =[] , n)
	while n >= 0
	array << n
	n = n - 1 
end
print array
end

append([],10)


def append2( array,n )
	n.downto(0) { |i| array << i }
	array
end

print append2([],10)

#this is recursively
def append3(array,n)
	return array if n < 0
	array << n 
	append3( array, n - 1)
end

print append3([],10)

#my recursive for reverse
def reverse_append(array, n)
	return array if n < 0   
		array.insert(0,n)
		reverse_append(array, n - 1 )
end
print reverse_append([],5)

def reverse_append2(array,n)
	return array if n < 0
	reverse_append2(array, n - 1 )
	array << n 
	array 
end
print reverse_append2([], 10)

def fibs_recurse(n)
	return 0 if n == 0
	return 1 if n == 1 
	fibs_recurse(n-1) + fibs_recurse(n-2)
end
print fibs_recurse(10) # => 55

