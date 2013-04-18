def random_select(array, n)
 newarray = []
  	newarray << array.shuffle.first(n)
  puts newarray
end
random_select([1,2,3,5,6],2)