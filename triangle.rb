# Write a method print_triangle which takes at its input an 
# integer representing the number of rows to print, and prints out a right triangle consisting of
# * characters, one line per row.


# print_triangle(rows) prints out a right triangle of +rows+ rows consisting 
# of * characters
#
# +rows+ is an integer
#
# For example, print_triangle(4) should print out the following: 
# *
# **
# ***
# ****

def print_triangle(rows)
		x=0
while x < rows

	x+=1
	puts "*"*x
end

end
	print_triangle(5)