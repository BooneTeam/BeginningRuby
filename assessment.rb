#Exercise #1
home_address = "2006 Mistywood Dr"
home_city = "Austin"
home_state = "TX"


#Exercise #2
first_name = "Anne" #This is assigning "Anne" to first_name so this means that using first_name is essentially the same as using "Anne"
first_name == "Anne" #This is evaluating if first_name points to "Anne"

#"Spalding" = first_name# This code does not work. It should be first_name = "Spalding".
"Spalding" == first_name#This code does work and is evaluating the same thing as the first_name == "Anne" example above.

#Exercise #3

array = [ "Ruby", "is", "the", "best", "programming", "language", "ever" ]
p array[3] #best is the the value stored at index 3
p array.index("Ruby") #the index of Ruby is 0
p array.length # The length of the array is 7

#Exercise #4

def product(array)
  total = 1
  array.each { |x| total *= x }
  
  return total
end
product([1,2,3])    # returns 6
product([0,-1,-10]) # returns 0
product([1,-1,-10]) # returns -11 # this should return 10 as 1 * 1 = 1, 1 * -1 = -1, -1 * -10 = 10

#Exercise 5
def product_odd(array)
	total = 1 
	array.each do |x|
		if x.odd?
		total *= x
	end
	end
	
	return total
end
product_odd([1,2,3])     # returns 3, because 2 is even
product_odd([0,-1,-10])  # returns -1, because 0 and -10 are even
product_odd([1,2,3,4,5]) # returns 15, because 4 and 2 are even

#Exercise 6
def fizzblam
	1.upto(1000).each do |x| 
		if x % 5 == 0 && x % 7 == 0
			print "Fizzblam"
		elsif x % 5 == 0
			print "Fizz"
		elsif x % 7 == 0
			print "Blam"
		else
			print x
		end
	end
end
fizzblam

#Exercise 7
#begin 
#method_1 returns the largest number in the array.
#end
def method_1(array)
  foo = array.first

  array.each do |num|
    if num > foo
      foo = num
    end
  end

  return foo
end
method_1([1,2,3,4,5,65])

def method_1_refactor(array)
	return array.sort.last
end
method_1_refactor([1,2,4,56,4523,3])

#begin 
#method_2 finds all positive numbers, pushes them to a new array and returns that array.
#end


def method_2(array)
  results = []

  array.each do |num|
    if num > 0
      results << num
    end
  end

  return results
end
method_2([0,-12,23,4,6,2,235,6,3])

#begin 
#method_3 finds all even numbers and pushes them into a new array then returns the new array.
#end
def method_3(array)
  results = []

  array.each do |num|
    if num % 2 == 0
      results << num
    end
  end

  return results
end
method_3([1,2,3,5,34,2,3])

#Exercise 8
#return sends the output to the application to use.
#puts simply turns the target into a string and prints the contents.
#looking at the House exercise can illustrate these points further.



#Exercise 9
#begin 
#My first thought was to have a variable start at 1 and count upwards as each number was increased in a loop comaparing it to the 
#next number in the array until it was different and then it printed out the number that was incorrect as this would be the missing number.
#This worked to find one number. But then it printed out all other numbers after the first missing number as missing as well. I played
#around with this and got it to work with the break keyword. I decided to give google a shout and was reminded of the simple way to compare arrays with "-". This way was then finished 
#in a few minutes.
#end
def missing_num(array)
  	x = array.to_a
	test_array = (1..10000).to_a
	missing = test_array - x
	return "These numbers are missing: " + missing.join(",")
end
missing_num(2.upto(9999))

#This was the original plan..
def missing_num2(array)
  start = 1
  	array.each do |x|
  		if start != x 
  			puts x - 1 
  			break
  		else
  			start = start.succ
  		end
  	end
end
missing_num2([1,2,3,5,6,7,8])



#Exercise 10
#I originally decided to use a hash for keys and values such as Eggs,2. My hash skills were a bit rusty and I couldn't wrap
#my head around why my hash variables werent working. I gave up and continued with an array to finish the problem since I have more
#experience using arrays. I decided to create a list and a quantity array. Both would reference the others indexes of the corresponding
#item and update it with a new item in the list and then pushing the amount of 1 into the quantity array. If an item is 
#created twice it found the items index in the list and found the same index in quantity and added 1 to that index value.

#I was unhappy with not finding my original solution using a hash and so continued to push on after solving with an array and a small break.
#After a break from the computer my memory was working again and the hash problem was not nearly as difficult as I was making it seem.
#Both are below.
=begin
class Groceries
	def initialize()
		@list = []
		@quantity = []
	end

	def add_item(item)
		if @list.include?(item)
			index_pos = @list.index(item)
			@quantity[index_pos] = @quantity[index_pos] +=1

		else
			@list << item
			@quantity << 1
		end
		@list.each { |x| index_pos = @list.index(x) print "you need #{@quantity[index_pos]} #{x}'s" }
	end	 

	def whole_list
		@list.each { |x| index_pos = @list.index(x) print "you need #{@quantity[index_pos]} #{x}'s" }
	end
			
end
list = Groceries.new
list.add_item("Eggs")
list.add_item("Eggs")
list.add_item("Jelly")
list.add_item("Beans")
list.add_item("Beans")
list.add_item("Eggs")
list.whole_list
=end

#this is refactored with a hash.
#much cleaner.
class Groceries2
	def initialize()
		@items = {}
	end
	
	def add_item(item,amount=1)
		if @items[item]
			@items[item] = amount + @items[item]
		else
			@items[item] = amount
		end
	end
	
	def whole_list
		return "Here is your list of Items #{@items}"
	end
end
newlist = Groceries2.new
newlist.add_item("Bananas",2)
newlist.add_item("Jelly Beans",2)
newlist.add_item("Bananas",3)
newlist.add_item("Jelly Beans")
newlist.whole_list


#Exercise 11 
#This exercise which I thought would take awhile was actually my quickest. I think coding is like a sport. You're better and faster if you've
#warmed up first.
#The house needed a min,max, and initial temp to be supplied for each as every houseguest may enjoy different settings. This was
#put into the initializing of the house object.
#The guest could then enter "heater" or "air" to bump the degrees up one degree or down two degrees.
#If the guest wants the heater on they can turn it on and it will stay on until it hits the max. This then turns on the air which will
#cool the house until it hits the min which then turns on the heat and so on.
class House
	def initialize(init_temp,min,max)
		@init_temp = init_temp
		@min = min
		@max = max
	end

	def update_temperature!(heat_or_air)
		if heat_or_air == "heater"
			@init_temp += 1
			puts @init_temp
			if @init_temp == @max+1
				puts "That is as hot as we can go, turning on Air!"
				return update_temperature!("air")
			end
			puts "The house is #{@init_temp} degrees"
		elsif heat_or_air == "air"
			@init_temp -= 2
			puts @init_temp
			if @init_temp < @min
				puts "That is as cold as we can go, turning on Heat!"
				return update_temperature!("heater")
			end
			puts "The house is #{@init_temp} degrees"
		else
			puts "The Thermostat can't do that! Choose heater or air."
		end
	end

	def air_on
		@init_temp -= 2
			puts @init_temp
			if @init_temp < @min
				puts "That is as cold as we can go, turning on Heat!"
				return heat_on
			else
				sleep 2
				if @init_temp <= @min
					return heat_on
				else 
					return air_on
				end
			end
		puts "The house is #{@init_temp} degrees"
	end

	def heat_on
		@init_temp += 1
			puts @init_temp
			if @init_temp >= @max+1
				puts "That is as hot as we can go, turning on Air!"
				return air_on
			else
				sleep 2
				if @init_temp >= @max+1
					return air_on
				else 
					return heat_on
				end
			end
		puts "The house is #{@init_temp} degrees"
	end
end
input = gets.chomp.split(",")
puts input[0].to_i
temp = House.new(input[0].to_i,input[1].to_i,input[2].to_i)
=begin temp.update_temperature!("heater")
temp.update_temperature!("heater")
temp.update_temperature!("heater")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("bananas")
=end
temp.air_on


# Exercise 12
# http://jsfiddle.net/Booner12354/r7MgY/17503/



