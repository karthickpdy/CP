
class StockTrader

  attr_reader :company,:order

  def initialize(company,order)
    @company = company
    @order = order
  end

  def trade
    order.buy_order? ? buy : sell
  end

  private

  def buy
    company.add_buy_order(order)
    perform_trade(company.sell_orders,order)    
  end

  def sell
    company.add_sell_order(order)
    perform_trade(company.buy_orders,order)
  end

  def perform_trade(orders,order)
    open_orders(orders).each do |existing_order|      
      processed_qty = existing_order.process(order.remaining_quantity)
      order.process(processed_qty)    
      break if order.closed?
    end
  end

  def open_orders(orders)
    orders.select{ |order| order.open? }
  end

end
