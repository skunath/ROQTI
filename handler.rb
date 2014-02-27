require_relative "stock.rb"
require_relative "data_handler.rb"
require_relative "File_Handler.rb"
apple = Stock.new("aapl")

apple.refresh_data("./Test_Data/aapl.csv")
apple.day_closing_price("2007", "01", "19")
apple.day_closing_price("2012", "01", "19")