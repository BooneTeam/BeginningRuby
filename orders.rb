class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    rice_orders = @menu[:rice]*orders[0]
    noodles_orders = @menu[:noodles]*orders[1]
	total = rice_orders + noodles_orders
	puts total
	end
end
menu = Restaurant.new(:rice => 3, :noodles => 2)
menu.cost(1,1)

class Restaurant2
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
    end
  end
end
