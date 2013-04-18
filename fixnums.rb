def array_of_fixnums?(array)
  array.all? { |x| x.is_a? Fixnum }
end


def sarray_of_fixnums?(*array)
  fixed = []
  array.each do |i|
  	if i.is_a?(Fixnum)
  	fixed << true
  else
  	fixed << false
  end
end
if fixed.include?(false)
	puts false
else 
	puts true
end
end
sarray_of_fixnums?(1,1,2)