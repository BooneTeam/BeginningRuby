#Here is the final exercise in this lesson. 
#I have an Item class which stores the item name, quantity and price. 
#You have to implement the equality methods for this object. Remember, you have to:

#Define a == method that compares the state of your object with that of the other one and returns a boolean value.
#Define a eql? method that simply calls the == to do the actual comparison.
#and
#Define a hash method that returns the result of XORing (using the ^ operator) the hash of all that instance variables which together determine the state of the object.


class Item
  
  attr_reader :item_name, :quantity, :supplier_name, :price
  
  def initialize(item_name, quantity, supplier_name, price)
    @item_name = item_name
    @quantity = quantity
    @supplier_name = supplier_name
    @price = price
  end 
  
  def ==(other_item)
    @item_name == other_item.item_name &&
    @quantity == other_item.quantity &&
    @supplier_name == other_item.supplier_name &&
    @price == other_item.price
  end
  
  def eql?(other_item)
    self == other_item
  end
  
  def hash
    @item_name.hash ^ @quantity.hash ^ @supplier_name.hash ^ @price.hash
  end    
end
