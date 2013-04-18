#basics of a class ->
#Classes act as templates for the creation of objects, specifying their state and behaviour
#An object created by a class is called an instance of that class
#A class is itself an object, and an instance of the class Class

puts "A String".is_a?(String) # true
puts 1.is_a?(String) #is_a? is the same as #kind_of?

def know_it_all(object)
  object.class
end
puts 1.is_a?(know_it_all(1))

puts Integer.methods.sort.first
puts Integer.superclass

#using Super 

class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move
    super + " by flying"
  end
end

class Human < Animal
	def move
		super + " by walking"
	end
end

class Penguin < Bird
	def move
		super + " and by swimming"
	end
end

puts Penguin.new.move
