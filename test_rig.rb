require_relative "stock.rb"
require_relative "data_handler.rb"
require_relative "File_Handler.rb"
require_relative "portfolio.rb"
require_relative "account.rb"

ted = Portfolio.new("Ted")

ted.add_stock("aapl", 100, 4750)
ted.add_stock("pg", 50, 9600)
ted.add_stock("bng", 100, 3800)

ted.current_assets()
ted.purchases_to_date()

teds_account = Account.new({:name => "Ted's Account", :portfolios => [ted,]})
puts teds_account.account_value()
puts teds_account.total_returns()


#apple = Stock.new("aapl")

#apple.refresh_data("./Test_Data/aapl.csv")
#apple.day_closing_price("2007", "01", "19")
#apple.day_closing_price("2012", "01", "19")
