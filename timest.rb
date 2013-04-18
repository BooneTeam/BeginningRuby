#Implement a method called times_table which takes as its input an 
#integer and prints out a times table with that number of rows.
#The numbers can be separated by any spaces or tabs, 
#but each row must be on a new line. This means it's ok if the columns don't line up.
#For example, times_table(5) should print the following out to the screen:

def times_table(rows)
	 if rows == 0
	 else
	 	a = 1
	 	b = 1
	 	while b <= rows
	 		while a <= rows
	 			b.upto(rows){ |i| print "#{i*a} "}
	 			puts "\n"
	 			a+=1
	 		end
	 		b+=1
	 	end
	 end	 
end
times_table(5)