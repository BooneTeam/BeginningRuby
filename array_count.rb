#count_between should return the number of integers in the Array between the two bounds, including the bounds
#It should return 0 if the Array is empty.

def count_between(array, lower_bound, upper_bound)

  if array.any? === false || lower_bound > upper_bound
    0
    else
    array.delete_if { |x| x < lower_bound }
    array.delete_if { |x| x > upper_bound }
    puts array.count
    end
    
end
count_between([5,4,2],3,100)

