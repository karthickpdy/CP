require_relative 'lib/stock_exchange.rb'
require_relative 'lib/company.rb'
require_relative 'lib/stock_trader.rb'
require_relative 'lib/order.rb'

class Client
  def self.run
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
  end
end
Client.run