require_relative "asset.rb"
require_relative "security.rb"


class Stock < Security # i've made this a subclass of asset... that may or may not be a good thing

  def initialize(ticker_symbol, num_shares = 0)
    @ticker_symbol = ticker_symbol
    @data_handler = DataHandler.new(self)
    @num_shares_in_brokerage = num_shares
    @assets = {}
  end
  
  def refresh_data(source_file)
    @data_handler.refresh(source_file)
  end

  def add_shares_to_brokerage(num_shares)
    @num_shares_in_brokerage += num_shares
  end

  def attach_to_asset(asset)
    @assets[asset.portfolio_object.name] = asset

  end

  def show_security_owners()
    for asset in @assets.keys
      puts "#{@assets[asset].portfolio_object.name} -> #{@assets[asset].quantity}"
    end
  end

  def num_shares_in_brokerage()
    return "Brokerage -> #{@ticker_symbol}: #{@num_shares_in_brokerage}"
  end
  
  def day_closing_price(year, month, day)
    puts @data_handler.retrieve(year, month, day)
  end

  def ticker_symbol()
    return @ticker_symbol
  end
  
  def to_s()
    return "#{@ticker_symbol}:\t#{@num_shares}"
  end  
  
end


