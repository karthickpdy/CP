require_relative 'lib/stock_exchange.rb'
require_relative 'lib/company.rb'
require_relative 'lib/stock_trader.rb'
require_relative 'lib/order.rb'
require 'minitest/autorun'

class TestOrder < MiniTest::Test

  def test_create_buy_order_with_open_status
    order = Order.new("buy","xyz",5)
    assert_equal(order.type,"Buy")
    assert_equal(order.status,"Open")
    assert_equal(order.company,"xyz")
    assert_equal(order.quantity,5)
    assert_equal(order.remaining_quantity,5)
    assert(order.open?)
    assert(!order.closed?)
    assert(order.buy_order?)
    assert_equal("Buy xyz 5 5 Open",order.to_s)
  end

  def test_create_buy_order_with_closed_status
    order = Order.new("buy","xyz",0)
    assert_equal(order.type,"Buy")
    assert_equal(order.status,"Closed")
    assert_equal(order.company,"xyz")
    assert_equal(order.quantity,0)
    assert_equal(order.remaining_quantity,0)
    assert(!order.open?)
    assert(order.closed?)
    assert(order.buy_order?)
    assert_equal("Buy xyz 0 0 Closed",order.to_s)
  end

  def test_create_sell_order_with_open_status
    order = Order.new("sell","xyz",5)
    assert_equal(order.type,"Sell")
    assert_equal(order.status,"Open")
    assert_equal(order.company,"xyz")
    assert_equal(order.quantity,5)
    assert_equal(order.remaining_quantity,5)
    assert(order.open?)
    assert(!order.closed?)
    assert(!order.buy_order?)
    assert_equal("Sell xyz 5 5 Open",order.to_s)
  end

  def test_create_sell_order_with_closed_status
    order = Order.new("sell","xyz",0)
    assert_equal(order.type,"Sell")
    assert_equal(order.status,"Closed")
    assert_equal(order.company,"xyz")
    assert_equal(order.quantity,0)
    assert_equal(order.remaining_quantity,0)
    assert(!order.open?)
    assert(order.closed?)
    assert(!order.buy_order?)
    assert_equal("Sell xyz 0 0 Closed",order.to_s)
  end

  def test_full_order_process
    order = Order.new("buy","xyz",5)
    rem = order.process(5)
    assert_equal(5,rem)
    assert_equal(0,order.remaining_quantity)
    assert(order.closed?)
  end

  def test_less_quantity_order_process
    order = Order.new("sell","xyz",5)
    rem = order.process(3)
    assert_equal(3,rem)
    assert_equal(2,order.remaining_quantity)
    assert(order.open?)
  end

  def test_more_quantity_order_process
    order = Order.new("sell","xyz",5)
    rem = order.process(8)
    assert_equal(5,rem)
    assert_equal(0,order.remaining_quantity)
    assert(order.closed?)
  end

end

class TestCompany < MiniTest::Test

  def test_company_name
    company = Company.new("xyz")
    assert_equal("xyz",company.name)
  end

  def test_order_added_to_buy_order
    company = Company.new("xyz")
    order = Order.new("buy","xyz",5)
    company.add_buy_order(order)
    assert_equal("xyz",company.name)
    assert_equal(1,company.buy_orders.length)
    assert_equal(order.to_s,company.buy_orders[0].to_s)
  end

  def test_order_added_to_sell_order
    company = Company.new("xyz")
    order = Order.new("sell","xyz",5)
    company.add_sell_order(order)
    assert_equal("xyz",company.name)
    assert_equal(1,company.sell_orders.length)
    assert_equal(order.to_s,company.sell_orders[0].to_s)
  end


  def test_fetch_order
    company = Company.new("xyz")
    buy_order = Order.new("buy","xyz",5)
    sell_order = Order.new("sell","xyz",5)
    company.add_buy_order(buy_order)
    company.add_sell_order(sell_order)
    assert_equal("xyz",company.name)
    assert_equal(1,company.buy_orders.length)
    assert_equal(1,company.sell_orders.length)
    fetched_orders = company.fetch_orders
    assert_equal(2,fetched_orders.length)
    assert_equal(buy_order.to_s,fetched_orders[0].to_s)
    assert_equal(sell_order.to_s,fetched_orders[1].to_s)
  end
end

class TestStockTrader < MiniTest::Test
  
  def test_buy_trade_when_company_has_no_orders
    company = Company.new("xyz")
    buy_order = Order.new("buy","xyz",5)
    StockTrader.new(company,buy_order).trade
    assert_equal(5,buy_order.remaining_quantity)
    assert(buy_order.open?)
  end

  def test_sell_trade_when_company_has_no_orders
    company = Company.new("xyz")
    sell_order = Order.new("sell","xyz",5)
    StockTrader.new(company,sell_order).trade
    assert_equal(5,sell_order.remaining_quantity)
    assert(sell_order.open?)
  end

  def test_buy_against_sell_trade_of_one_company
    company = Company.new("xyz")
    sell_order = Order.new("sell","xyz",5)
    company.add_sell_order(sell_order)
    buy_order = Order.new("buy","xyz",5)
    StockTrader.new(company,buy_order).trade
    assert(buy_order.closed?)
    assert(sell_order.closed?)    
  end

  def test_sell_against_buy_trade_of_one_company
    company = Company.new("xyz")
    buy_order = Order.new("buy","xyz",5)
    company.add_buy_order(buy_order)
    sell_order = Order.new("sell","xyz",5)
    StockTrader.new(company,sell_order).trade
    assert(buy_order.closed?)
    assert(sell_order.closed?)
  end

  def test_order_of_one_company_not_affect_other
    company_1 = Company.new("xyz")
    company_2 = Company.new("abc")
    
    buy_order_1 = Order.new("buy","xyz",5)
    buy_order_2 = Order.new("buy","abc",5)
    sell_order = Order.new("sell","xyz",5)

    company_1.add_buy_order(buy_order_1)

    StockTrader.new(company_2,buy_order_2).trade
    StockTrader.new(company_1,sell_order).trade

    assert(buy_order_1.closed?)
    assert(sell_order.closed?)
    
    assert(buy_order_2.open?)
    assert_equal(5,buy_order_2.remaining_quantity)

  end
  

  def test_buy_order_does_not_trade_against_closed_orders
    company = Company.new("xyz")
    
    buy_order_1 = Order.new("buy","xyz",5)  
    StockTrader.new(company,buy_order_1).trade
    sell_order = Order.new("sell","xyz",0)
    StockTrader.new(company,sell_order).trade

    buy_order_2 = Order.new("buy","xyz",5)
    StockTrader.new(company,buy_order_2).trade

    assert(buy_order_1.open?)
    assert_equal(5,buy_order_1.remaining_quantity)

    assert(sell_order.closed?)
    assert(buy_order_2.open?)
    assert_equal(5,buy_order_2.remaining_quantity)
  end
  

  def test_sell_order_does_not_trade_against_closed_orders
    company = Company.new("xyz")
    
    sell_order_1 = Order.new("sell","xyz",5)
    company.add_sell_order(sell_order_1)
    buy_order = Order.new("buy","xyz",0)
    StockTrader.new(company,buy_order).trade

    sell_order_2 = Order.new("sell","xyz",5)
    StockTrader.new(company,sell_order_2).trade

    assert(sell_order_1.open?)
    assert_equal(5,sell_order_1.remaining_quantity)

    assert(buy_order.closed?)

    assert(sell_order_2.open?)
    assert_equal(5,sell_order_2.remaining_quantity)
  end
  
  def test_sell_against_multiple_buy_orders_with_more_qty_fcfs
    company = Company.new("xyz")
    buy_order_1 = Order.new("buy","xyz",10)
    buy_order_2 = Order.new("buy","xyz",10)
    company.add_buy_order(buy_order_1)
    company.add_buy_order(buy_order_2)
    sell_order = Order.new("sell","xyz",5)
    StockTrader.new(company,sell_order).trade
    assert(buy_order_1.open?)
    assert_equal(5,buy_order_1.remaining_quantity)

    assert(buy_order_2.open?)
    assert_equal(10,buy_order_2.remaining_quantity)

    assert(sell_order.closed?)    
  end

  def test_sell_against_multiple_buy_orders_with_less_qty_fcfs
    company = Company.new("xyz")
    buy_order_1 = Order.new("buy","xyz",3)
    buy_order_2 = Order.new("buy","xyz",3)
    company.add_buy_order(buy_order_1)
    company.add_buy_order(buy_order_2)
    sell_order = Order.new("sell","xyz",5)
    StockTrader.new(company,sell_order).trade
    assert(buy_order_1.closed?)    

    assert(buy_order_2.open?)
    assert_equal(1,buy_order_2.remaining_quantity)

    assert(sell_order.closed?)    
  end

  def test_partial_sell_against_multiple_buy_orders_with_less_qty_fcfs
    company = Company.new("xyz")
    buy_order_1 = Order.new("buy","xyz",2)
    buy_order_2 = Order.new("buy","xyz",2)
    company.add_buy_order(buy_order_1)
    company.add_buy_order(buy_order_2)
    sell_order = Order.new("sell","xyz",5)
    StockTrader.new(company,sell_order).trade
    
    assert(buy_order_1.closed?)    
    assert(buy_order_2.closed?)

    assert(sell_order.open?)
    assert_equal(1,sell_order.remaining_quantity)
  end



  def test_buy_against_multiple_sell_orders_with_more_qty_fcfs
    company = Company.new("xyz")
    sell_order_1 = Order.new("sell","xyz",10)
    sell_order_2 = Order.new("sell","xyz",10)
    company.add_sell_order(sell_order_1)
    company.add_sell_order(sell_order_2)
    buy_order = Order.new("buy","xyz",5)
    StockTrader.new(company,buy_order).trade
    assert(sell_order_1.open?)
    assert_equal(5,sell_order_1.remaining_quantity)

    assert(sell_order_2.open?)
    assert_equal(10,sell_order_2.remaining_quantity)

    assert(buy_order.closed?)    
  end


  def test_buy_against_multiple_sell_orders_with_less_qty_fcfs
    company = Company.new("xyz")
    sell_order_1 = Order.new("sell","xyz",3)
    sell_order_2 = Order.new("sell","xyz",3)
    company.add_sell_order(sell_order_1)
    company.add_sell_order(sell_order_2)
    buy_order = Order.new("buy","xyz",5)
    StockTrader.new(company,buy_order).trade
    assert(sell_order_1.closed?)    

    assert(sell_order_2.open?)
    assert_equal(1,sell_order_2.remaining_quantity)

    assert(buy_order.closed?)    
  end


  def test_partial_buy_against_multiple_sell_orders_with_less_qty_fcfs
    company = Company.new("xyz")
    sell_order_1 = Order.new("sell","xyz",2)
    sell_order_2 = Order.new("sell","xyz",2)
    company.add_sell_order(sell_order_1)
    company.add_sell_order(sell_order_2)
    buy_order = Order.new("buy","xyz",5)
    StockTrader.new(company,buy_order).trade
    
    assert(sell_order_1.closed?)    
    assert(sell_order_2.closed?)

    assert(buy_order.open?)
    assert_equal(1,buy_order.remaining_quantity)
  end


end

class TestStockExchange < MiniTest::Test

  def test_new_company_added_on_order
    s = StockExchange.new
    s.place_order("buy","xyz",5)
    assert_equal(1,s.companies.length)
    s.place_order("buy","abc",5)
    assert_equal(2,s.companies.length)
  end

  def test_existing_company_fetched_on_order
    s = StockExchange.new
    s.place_order("buy","xyz",5)
    s.place_order("sell","xyz",5)
    assert_equal(1,s.companies.length)    
  end

  def test_list_order_by_arrival
    s = StockExchange.new
    arr = [
            ["buy","xyz",3],
            ["sell","xyz",4],
            ["sell","abc",10],
            ["sell","xyz",2],
            ["buy","abc",6],
            ["sell","xyz",5]
          ]
    arr.each{|order| s.place_order(*order)}

    list = s.list_orders
    
    assert_equal(arr.length,list.length)
    
    arr.zip(list).each do |expected,actual|
      assert_equal(expected[0].capitalize,actual.type)
      assert_equal(expected[1],actual.company)
      assert_equal(expected[2],actual.quantity)
    end
  end

  def test_given_example
    s = StockExchange.new
    buy_abc_1 = ["buy","abc",10]
    sell_xyz_1 = ["sell","xyz",15]
    sell_abc_1 = ["sell","abc",13]
    buy_xyz_1 = ["buy","xyz",10]
    buy_xyz_2 = ["buy","xyz",8]
          

    puts 
    puts "------------Given Example -------------"
    puts 

    s.place_order(*buy_abc_1)
    list = s.list_orders
    
    assert_equal(1,list.length)

    assert_equal(buy_abc_1[0].capitalize,list[0].type) #type
    assert_equal(buy_abc_1[1],list[0].company) #company
    assert_equal(buy_abc_1[2],list[0].quantity) #quantity
    assert_equal(10,list[0].remaining_quantity) #remaining quantity
    assert(list[0].open?) #status

    puts
    puts "---------------------------------------"

    s.place_order(*sell_xyz_1)
    s.place_order(*sell_abc_1)
    list = s.list_orders

    assert_equal(3,list.length)

    assert_equal(buy_abc_1[0].capitalize,list[0].type) #type
    assert_equal(buy_abc_1[1],list[0].company) #company
    assert_equal(buy_abc_1[2],list[0].quantity) #quantity
    assert_equal(0,list[0].remaining_quantity) #remaining quantity
    assert(list[0].closed?) #status


    assert_equal(sell_xyz_1[0].capitalize,list[1].type) #type
    assert_equal(sell_xyz_1[1],list[1].company) #company
    assert_equal(sell_xyz_1[2],list[1].quantity) #quantity
    assert_equal(15,list[1].remaining_quantity) #remaining quantity
    assert(list[1].open?) #status


    assert_equal(sell_abc_1[0].capitalize,list[2].type) #type
    assert_equal(sell_abc_1[1],list[2].company) #company
    assert_equal(sell_abc_1[2],list[2].quantity) #quantity
    assert_equal(3,list[2].remaining_quantity) #remaining quantity
    assert(list[2].open?) #status

    puts
    puts "---------------------------------------"

    s.place_order(*buy_xyz_1)
    s.place_order(*buy_xyz_2)
    list = s.list_orders

    assert_equal(5,list.length)

    assert_equal(buy_abc_1[0].capitalize,list[0].type) #type
    assert_equal(buy_abc_1[1],list[0].company) #company
    assert_equal(buy_abc_1[2],list[0].quantity) #quantity
    assert_equal(0,list[0].remaining_quantity) #remaining quantity
    assert(list[0].closed?) #status


    assert_equal(sell_xyz_1[0].capitalize,list[1].type) #type
    assert_equal(sell_xyz_1[1],list[1].company) #company
    assert_equal(sell_xyz_1[2],list[1].quantity) #quantity
    assert_equal(0,list[1].remaining_quantity) #remaining quantity
    assert(list[1].closed?) #status


    assert_equal(sell_abc_1[0].capitalize,list[2].type) #type
    assert_equal(sell_abc_1[1],list[2].company) #company
    assert_equal(sell_abc_1[2],list[2].quantity) #quantity
    assert_equal(3,list[2].remaining_quantity) #remaining quantity
    assert(list[2].open?) #status


    assert_equal(buy_xyz_1[0].capitalize,list[3].type) #type
    assert_equal(buy_xyz_1[1],list[3].company) #company
    assert_equal(buy_xyz_1[2],list[3].quantity) #quantity
    assert_equal(0,list[3].remaining_quantity) #remaining quantity
    assert(list[3].closed?) #status


    assert_equal(buy_xyz_2[0].capitalize,list[4].type) #type
    assert_equal(buy_xyz_2[1],list[4].company) #company
    assert_equal(buy_xyz_2[2],list[4].quantity) #quantity
    assert_equal(3,list[4].remaining_quantity) #remaining quantity
    assert(list[4].open?) #status

  end


end