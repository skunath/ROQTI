require_relative "asset.rb"
class Stock < Asset # i've made this a subclass of asset... that may or may not be a good thing

  def initialize(ticker_symbol, num_shares = 0)
    @ticker_symbol = ticker_symbol
    @data_handler = DataHandler.new(self)
    @num_shares = num_shares
  end
  
  def refresh_data(source_file)
    @data_handler.refresh(source_file)
    
  end
  
  def day_closing_price(year, month, day)
    puts @data_handler.retrieve(year, month, day)
  end
  
  def to_s()
    return "#{@ticker_symbol}:\t#{@num_shares}"
  end  
  
end


