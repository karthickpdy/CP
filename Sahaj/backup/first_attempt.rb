class StockExchange
  attr_accessor :orders_by_company,:historical_transactions
  
  def initialize
    puts "here"
    self.orders_by_company = Hash.new{|h,k| h[k] = []}
    self.historical_transactions = []
  end

  def fulfill_order(type,company,quantity)
    new_order = Order.new(type,company,quantity)
    puts "#{new_order}"
    orders_by_company[company].each do |order|
      if order.type != new_order.type && order.status != "closed"
        new_order.process(order.process(new_order.remaining_quantity))
      end
      break if new_order.status == "closed"
    end
    orders_by_company[company] << new_order
  end

  def list_transactions
    orders_by_company.values.flatten.sort_by{|x| x.placed_time}.each do |order|
      puts "#{order.type} #{order.company} #{order.quantity} #{order.remaining_quantity} #{order.status}"
    end
  end
end

class Order
  attr_accessor :company,:quantity,:remaining_quantity,:status,:placed_time,:type

  def initialize(type,company,quantity)
    self.quantity = self.remaining_quantity = quantity
    self.company = company
    self.placed_time = Time.now
    self.type = type.downcase.to_sym
    set_status
  end

  def process(qty)
    if qty > remaining_quantity
      processed = remaining_quantity
    else
      processed = qty
    end
    self.remaining_quantity -= processed
    set_status
    processed
  end

  private

  def set_status
    if self.remaining_quantity > 0
      self.status = "open"
    else
      self.status = "closed"
    end
  end
end


s = StockExchange.new
s.fulfill_order("Buy","ABC",10)
s.list_transactions
s.fulfill_order("Sell","XYZ",15)
s.fulfill_order("Sell","ABC",13)
s.fulfill_order("Buy","XYZ",10)
s.fulfill_order("Buy","XYZ",8)