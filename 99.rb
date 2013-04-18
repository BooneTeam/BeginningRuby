def ninety_nine_bottles(num)
	num.downto(0) do 
		print "#{num} bottles of beer on the wall."
		print "#{num} bottles of beer."
		print "Take one down, pass it around."
		num = num - 1
		print "#{num} bottles of beer on the wall."
		end 
end
ninety_nine_bottles(99)