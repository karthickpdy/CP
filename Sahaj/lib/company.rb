
class Company

  attr_reader :name, :buy_orders, :sell_orders

  def initialize(name)
    @name = name
    @buy_orders = []
    @sell_orders = []
  end

  def add_buy_order(order)
    buy_orders << order
  end

  def add_sell_order(order)
    sell_orders << order
  end

  def fetch_orders
    buy_orders + sell_orders
  end

end
