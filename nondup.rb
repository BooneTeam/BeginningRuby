def non_duplicated_values(*values)
  newvalues = []
  values.each do |i| 
  	if newvalues.include?(i) == false
  newvalues << i
  end
end
end
non_duplicated_values(1,1,1,2,4,5,6,)

def nondup(*vals)
	newvals = []
	vals.each do |x|
		if vals.count(x) <= 1 
			newvals << x
		end
		
		end
end
nondup(1,1,1,2,4,5,6,)

def non_duplicated_valuess(*vals)
	newvals = []
	vals.each do |x|
		if vals.count(x) <= 1 
			newvals << x
		end
		end
  puts newvals.inspect
  vals = newvals
  puts vals
end
non_duplicated_valuess(1,1,1,2,4,5,6,)

def non_duplicated_values(values)
  values.find_all { |x| values.count(x) == 1 }
end