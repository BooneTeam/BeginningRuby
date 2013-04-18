#basic lambda
subtraction = lambda { |x,y| puts x - y }

subtraction.call(5,3)


# lambda calls
def calculation(a, b, operation)
  operation.call(a, b)
end

puts calculation(5, 6, lambda { |a, b| a + b }) # addition
puts calculation(5, 6, lambda { |a, b| a - b }) # subtraction

# using yield (no need for lamda call and the yield keyword is before the arguments and no need for
#third argument)
#the {} is the block being called
#The block is now no longer a parameter to the method. The block has been implicitly passed to the method - note how it's outside the parentheses.
#Yield makes executing the block feel like a method invocation within the method invocation rather than a block that's being explicitly called using Proc#call.
#You have no handle to the block object anymore - yield "magically" invokes it without any object references being involved.

def calculation_yield(a, b)
  yield(a, b)
end

puts calculation_yield(5, 6) { |a, b| a + b } # addition
puts calculation_yield(5, 6) { |a, b| a - b } # subtraction

def foo
 yield
end
foo { puts "sometimes shortcuts do get you there faster"  }

#calling yield

def prettify_it
 puts "The result of the block was: #{yield}"
end
prettify_it{"Hello, World"}

#Using yield speeds up code

require "benchmark"

def calculation_with_explicit_block_passing(a, b, operation)
 operation.call(a, b)
end

def calculation_with_implicit_block_passing(a, b)
 yield(a, b)
end

Benchmark.bmbm(10) do |report|
 report.report("explicit") do
   addition = lambda { |a, b| a + b }
   1000.times { calculation_with_explicit_block_passing(5, 5, addition) }
 end

 report.report("implicit") do
   1000.times { calculation_with_implicit_block_passing(5, 5) { |a, b| a + b } }
 end
end

#examples of explicit to implicit
def filter(array, block)
 return array.select(&block)
end
puts filter([1, 2, 3, 4], lambda {|number| number.even? })

Filter = lambda do |array, &block|
 array.select(&block)
end
Filter.call([1,2,3,4]) { |number| puts number if number.even? }

#, any attempt to use yield within a block will always fail with a LocalJumpError. 
#lambda { yield }.call

#Different proc syntax
short = proc { |a, b| a + b }
puts short.call(2, 3)

long = Proc.new { |a, b| a + b }
puts long.call(2, 3)

#different lambda syntax
short = ->(a, b) { a + b }
puts short.call(2, 3)

long = lambda { |a, b| a + b }
puts long.call(2, 3)

