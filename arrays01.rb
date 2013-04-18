def zen(array)
  array.flatten!
  if array.include?(nil)
    array.compact! 
    if array[5] === 42
      array.count
    else
      nil
    end
  elsif array[5] === 42
    array.count
  else 
    nil
  end
  # write your method here
end
zen([1,2,3,4,5,nil,42])
zen([1,3,23,5,5,42])

def zen2(array)
  converted = array.compact.flatten
  converted.index(42) == 5 ? converted.count : nil
end

#

def few2last(array)
  sliced = array.slice(-2, 2)
  sliced.join("|")
end
few2last([1,3,23,5,5,42])

a = Array.new(1,Hash.new)
a[0]['cat'] = 'feline'
puts a