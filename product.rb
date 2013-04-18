def product(array)
  total = 1
  array.each { |x| total *= x }
  return total
end
product([1,2,3])    # returns 6
product([0,-1,-10]) # returns 0
product([1,-1,-10]) # returns -11 # this should return 10 as 1 * 1 = 1, 1 * -1 = -1, -1 * -10 = 10
