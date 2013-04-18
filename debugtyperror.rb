def print_and_sort(array)
  if array.respond_to?(:split)
  	array = array.split(" ")
  else
  array.collect! { |x| x.to_s }
  	return array.sort
  end
  output_string = ""
  array.each do |element|
    output_string = output_string + " " + element
  end
  print output_string
  print array.sort
end

def words
end


print_and_sort([1,2,3,4,5,4])
print_and_sort(["1",2,3,"4",2,"2"])
print_and_sort("this is supposed to be sorted by alphabetical order")