def missing_num2(array)
	x = array.to_a
	test_array = (1..10000).to_a
	missing = test_array - x
	p  "These numbers are missing: " + missing.join(",")
end
missing_num2(2.upto(9999))

def missing_num2(array)
  start = 1
  	array.each do |x|
  		if start != x 
  			puts x - 1 
  			break
  		else
  			start = start.succ
  		end
  	end
end
missing_num2([1,2,3,5,6,7,8])