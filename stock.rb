class Stock
  def initialize(ticker_symbol)
    @ticker_symbol = ticker_symbol
    @data_handler = DataHandler.new(self)
 
  end
  
  def refresh_data(source)
    @data_handler.refresh(source)
    
  end
  
  def day_closing_price(year, month, day)
    puts @data_handler.retrieve(year, month, day)
    
    
    
  end
end


