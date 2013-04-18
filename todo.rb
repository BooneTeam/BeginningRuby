class AddToList
		
	attr_reader :item, :count, :list
	def initialize(args)
		args = defaults.merge(args)
		@item = args[:item]
		@count = args[:count]
		@list = {}
	end

	def defaults 
		{ :item => "No Items", :count => 1 }
	end

	def add(item,amount=1)
		if @items[item]
			@items[item] = amount + @items[item]
		else
			@items[item] = amount
		end
	end
end
		print "Enter Items in format item,quantity. When finished type done \n" 
		input = gets.chomp
		while input != "done "
		add_to_list = input.split(",")
		add_to_list = Hash[*add_to_list]
		AddToList.new(add_to_list)
	end



class Completed
end
class ShowList
end

class UserInput
end
