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
			 @list.each do |x|
		 	index_pos = @list.index(x)
		  puts "you need #{@quantity[index_pos]} #{x}'s"
		end
		end	 
			
end
list = Groceries.new
list.add_item("Eggs")
list.add_item("Eggs")
list.add_item("Jelly")
list.add_item("Beans")
list.add_item("Beans")
list.add_item("Eggs")
#print list.inspect

class Groceries2
	def initialize()
		@items = {}
	end
	
	def add_item(item,amount=1)
		if @items[item]
			puts "yup"
			@items[item] = amount + @items[item]
		else
		@items[item] = amount
	end
	end
end
newlist = Groceries2.new
newlist.add_item("Bananas",2)
newlist.add_item("Jelly Beans",2)
newlist.add_item("Bananas",3)
newlist.add_item("Jelly Beans")
puts newlist.inspect