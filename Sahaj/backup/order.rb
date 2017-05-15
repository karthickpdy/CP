
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
    @status = remaining_quantity > 0 ?  STATUS[:open] : STATUS[:closed]
  end

end
