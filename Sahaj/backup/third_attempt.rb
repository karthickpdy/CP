class Company

  attr_reader :name, :buy_orders, :sell_orders

  def initialize(name)
    @name = name
    @buy_orders = []
    @sell_orders = []
  end

  def process_order(new_order)
    if new_order.buy_order?
      add_buy_order(new_order)
      open_orders(sell_orders)
    else
      add_sell_order(new_order)
      open_orders(buy_orders)
    end
  end

  def fetch_orders
    buy_orders + sell_orders
  end
  
  private

  def add_buy_order(order)
    buy_orders << order
  end

  def add_sell_order(order)
    sell_orders << order
  end

  def open_orders(orders)
    orders.select{ |order| order.open? }
  end

end

class StockExchange

  attr_reader :companies
  
  def initialize
    @companies = []    
  end

  def place_order(type,company_name,quantity)
    company = add_or_fetch_company(company_name)
    new_order = Order.new(type,company_name,quantity)
    order_list = company.process_order(new_order)
    perform_trade(order_list,new_order)
  end

  def list_orders    
    orders_by_arrival.each do |order|
      puts order
    end
  end

  private

  def add_or_fetch_company(company_name)
    company = companies.detect { |e| e.name == company_name } 
    if !company
      company = Company.new(company_name)
      self.companies << company
    end
    company
  end

  def perform_trade(open_orders,order)
    open_orders.each do |existing_order|      
      processed_qty = existing_order.process(order.remaining_quantity)
      order.process(processed_qty)    
      break if order.closed?
    end    
  end

  def orders_by_arrival
    companies.map(&:fetch_orders).flatten.sort_by{|x| x.placed_time}
  end

end

class Order

  attr_reader :company,:quantity,:remaining_quantity,:status,:placed_time,:type

  ORDER_TYPE = { :buy => "Buy", :sell => "Sell" }
  STATUS = { :open => "Open", :closed => "Closed" }

  def initialize(type,company,quantity)
    @quantity = @remaining_quantity = quantity
    @company = company
    @placed_time = Time.now
    @type = ORDER_TYPE[type.downcase.to_sym]
    set_status
  end

  def process(qty)    
    processed = qty > remaining_quantity ? remaining_quantity : qty
    @remaining_quantity -= processed
    set_status
    processed
  end

  def open?
    status == STATUS[:open]
  end

  def closed?
    status == STATUS[:closed]
  end

  def buy_order?
    type == ORDER_TYPE[:buy]
  end

  def to_s
    "#{type} #{company} #{quantity} #{remaining_quantity} #{status}"
  end

  private

  def set_status
    if remaining_quantity > 0
      @status = STATUS[:open]
    else
      @status = STATUS[:closed]
    end
  end
end

puts "Enter Order type, company and quantity separated by space to place an order"
puts "Enter 1 to print current orders status"
puts "Any other input to exit"

stock_exchange = StockExchange.new

while true
  arr = gets.chomp.split(" ")
  if arr.length == 3
    stock_exchange.place_order(arr[0],arr[1],arr[2].to_i)
  elsif arr[0].to_i == 1
    stock_exchange.list_orders
  else
    break
  end
end
