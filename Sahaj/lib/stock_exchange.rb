class StockExchange

  attr_reader :companies
  
  def initialize
    @companies = []    
  end

  def place_order(type,company_name,quantity)
    company = add_or_fetch_company(company_name)
    new_order = Order.new(type,company_name,quantity)
    puts "here"
    NewStockTrader.new(company,new_order).trade
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

  def orders_by_arrival
    companies.map(&:fetch_orders).flatten.sort_by{|x| x.placed_time}
  end

end

