
class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
   total = 0
   if block_given?
   array.each { |x| total += yield(x) }
   else
   array.each { |x| total += x }
end
  puts sum = total + initial_value
  end

end
math = MyArray.new([2,3,4])
math.sum(10) { |n| n * 2 }

class MyArray2
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    return array.inject(:+) + initial_value unless block_given?
    sum = initial_value
    array.each {|n| sum += yield(n) }
    sum
  end
end