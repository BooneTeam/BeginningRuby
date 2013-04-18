#Write a method shortest_string which takes as its input an Array of Strings and returns the shortest String in the Array.
def shortest_string(array)
  longstr = array.sort_by{ |x| x.length }
	puts longstr.first
end
	shortest_string(["hi", "zzzzzzz"])