def number_shuffle(number)
  length = number.to_s.length
  spot = length
  number_arrays = number.to_s.split("").to_a.permutation.to_a.flatten
  total = number_arrays.length 
  while spot <= total + total
  number_arrays = number_arrays.insert(spot,",")
  spot += length + 1
	end
	number_array = number_arrays.join.split(",").to_a
	number_array = number_array.collect! {|i| i.to_i }
	print number_array.sort
end
number_shuffle(12334)






def number_shuffle2(number)
  no_of_combinations = number.to_s.size == 3 ? 6 : 24
  print no_of_combinations 
  digits = number.to_s.split(//)
  combinations = []
  combinations << digits.shuffle.join.to_i while combinations.uniq.size!=no_of_combinations
  combinations.uniq.sort
end
number_shuffle2(124)