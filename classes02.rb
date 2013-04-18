#getter and setter methods


#getter (
class Item
  def initialize(description, color)
    @description = description
    @color = color
  end
  #***get
  def description
    return "The item is #{@color} and is #{@description}"
  end
  
end
#)

#setter (

class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end
  #****set
  def quantity=(new_quantity)
    @quantity = new_quantity
  end
  #***get
  def quantity
    @quantity
  end  
end

item = Item.new("a",1)
item.quantity = 3
p item.quantity
#)

#use attr_writer and attr_reader or for both use attr_accessor 

#Class methods do not have access to instance methods or instance variables.
#However instance methods can access both class methods and class variables.
#do not use @@class variables(its :( upon ) unless its for application settings config
#class instance variables are better than class variables because they are not shared across all
#Class instance variables are a better alternative than class variables simply because the data is
#not shared across the inheritance chain. Another major difference between class variables and 
#class instance variables are that class instance variables are available only in class methods. 
#But class variables are available in both class methods and instance methods.
#change the class instances to class variables and delete the instance variables in the classes
#and you can see the difference


class ApplicationConfiguration
  @configuration = {}

  def self.set(property, value)
    @configuration[property] = value
  end

  def self.get(property)
    @configuration[property]
  end
end

class ERPApplicationConfiguration < ApplicationConfiguration
  @configuration = {}
end

class WebApplicationConfiguration < ApplicationConfiguration
  @configuration = {}
end

ERPApplicationConfiguration.set("name", "ERP Application")
WebApplicationConfiguration.set("name", "Web Application")

p ERPApplicationConfiguration.get("name")
p WebApplicationConfiguration.get("name")

p ApplicationConfiguration.get("name")

