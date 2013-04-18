#Implement Array#pad and Array#pad!. 
#Each method accepts a minimum size (non-negative integer) and an optional pad value as arguments.
#If the array's length is less than the minimum size, Array#pad should return a new array padded with the pad value up to the minimum size.



class Array

  def pad!(min_size, value = nil)
    if min_size > length
  		howmany = min_size - self.length
  		howmany.times do 
  		self << value
  		end
	else 
 	self
  	end
  	self
  	end

  
  def pad(min_size, value = nil)
  	x = []
  	self.each { |i| x << i }
  	if min_size > length
  		howmany = min_size - self.length
  		howmany.times do 
  		x << value
  	end
  	else
  		self

  	end
  
  	x

  	end
  	end

puts [5,5].pad(10,'nooo').inspect