#Write a method longest_string which takes as its input an Array of Strings
# and returns the longest String in the Array.
def longest_string(array)

	longstr = array.sort_by{ |x| x.length }
	puts longstr.last
  # Your code goes here!
end
	longest_string(["boobs", "hellos", "but"])