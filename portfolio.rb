require 'Date'
class Portfolio
  def initialize(name, cash=0, account=nil)
    @name = name
    @cash = cash
    @account = account
    @assets = {} #key is ticker symbol, vals are assets objects
    @purchases = []
    self.calc_value() #setting Profile @value via method
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

  def calc_value()
    portfolio_value = 0
    for asset in @assets.values
        portfolio_value += asset.current_value() #all assets must implement a .current_value method
    end
    @value = portfolio_value
  end

  #currently using as getter, but might make
  #more sense to freshly calculate?
  def current_value()
    # self.calc_value()
    return @value
  end

  def total_returns()
    returns = 0
    for asset in @assets.values
      returns += asset.current_return()
    end
    return returns
  end

end
