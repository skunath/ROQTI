require 'Date'
class Portfolio
  def initialize(name, cash=0, account=nil)
    @name = name
    @cash = cash
    @account = account
    @assets = {} #stock objects
    @purchases = []
  end
  
  def get_assets()
    return @assets
  end
  
  #to change how data is stored in future
  def add_to_purchases(purchase_record)
    @purchases << purchase_record
  end
  
  def add_to_assets(ticker_symbol, asset)
    @assets[ticker_symbol] = asset
  end
  
  #testing method
  def add_stock(ticker_symbol, num_shares, purchase_price)
    new_stock = Stock.new(ticker_symbol, num_shares)
    add_to_purchases([ticker_symbol, num_shares, purchase_price, DateTime.now()])
    add_to_assets(ticker_symbol, new_stock)
  end
  
  def current_assets()
    for asset in @assets.keys.sort()
      puts @assets[asset]
    end
  end
  
  def purchases_to_date()
    for purchase in @purchases
      puts purchase.to_s
    end
  end

end