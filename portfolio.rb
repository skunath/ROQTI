require 'Date'
class Portfolio
  def initialize(name, cash=0, account=nil)
    @name = name
    @cash = cash
    @account = account
    @assets = {} #asset objects
    @purchases = []
  end
  
  def get_assets()
    return @assets
  end

  def name
    return @name
  end

  #to change how data is stored in future
  def add_to_purchases(purchase_record)
    @purchases << purchase_record
  end
  
  def add_to_assets(ticker_symbol, asset)
    @assets[ticker_symbol] = asset
  end

  def add_asset(stock, quantity, price)
    new_asset = Asset.new(:quantity => quantity, :price => price, :portfolio_object => self, :security_object => stock)

    add_to_assets(stock.ticker_symbol, new_asset)
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
      puts @assets[asset].object_id
    end
  end
  
  def purchases_to_date()
    for purchase in @purchases
      puts purchase.to_s
    end
  end

  def value_on_day(year, month, day)
    # you want to take the quantity and price of all the shares in the portfolio and add them all up
    # MINUS the price of the stock on a particular day... So it could possibly be negative

    total_value # use a variable like this... set it correctly
    for asset in ... # fill the ... in...make this loop work
      stock_price = asset.stock_object. # finish off this line something to get the price on a given day...
          # look at how we get the stock price on a given day in test_rig
      total_value += # here multiple asset quantity and (purchase price - current day stock price)
    end

    return total_value
  end

  def purchase_value()
    # you want to take the quantity and price of all the shares in the portfolio and add them all up

    total_value # use a variable like this... set it correctly
    for asset in ... # fill the ... in...make this loop work
      total_value += # here multiple asset quantity and purchase price
    end

    return total_value
  end


end