class Company
  attr_accessor :name,:orders

  def initialize(name)
    self.name = name
    self.orders = []  
  end

  def add_order(order)
    self.orders << order
  end

  def fetch_orders
    self.orders
  end

end

class StockExchange
  attr_accessor :companies,:historical_transactions
  
  def initialize
    self.companies = []
    self.historical_transactions = []
  end

  def place_order(type,company_name,quantity)
    company = add_or_fetch_company(company_name)
    new_order = Order.new(type,company_name,quantity)
    company.add_order(new_order)
    perform_trade(company,new_order)
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

  def perform_trade(company,order)
    company.fetch_orders.each do |existing_order|
      if order.type != existing_order.type && existing_order.open?
        processed_qty = existing_order.process(order.remaining_quantity)
        order.process(processed_qty)
      end
      break if order.closed?
    end    
  end

  def orders_by_arrival
    companies.map(&:fetch_orders).flatten.sort_by{|x| x.placed_time}
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
    processed = qty > remaining_quantity ? remaining_quantity : qty
    self.remaining_quantity -= processed
    set_status
    processed
  end


  def open?
    self.status == "open"
  end

  def closed?
    self.status == "closed"
  end

  def to_s
    "#{self.type} #{self.company} #{self.quantity} #{self.remaining_quantity} #{self.status}"
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
s.place_order("Buy","ABC",10)
s.list_order
s.place_order("Sell","XYZ",15)
s.place_order("Sell","ABC",13)
s.place_order("Buy","XYZ",10)
s.place_order("Buy","XYZ",8)