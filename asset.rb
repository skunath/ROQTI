class Asset
  attr_reader :quantity
  def initialize(args)
    @security_object = args[:security_object] # attach asset to a security object
    @portfolio_object = args[:portfolio_object] # attach asset to a portfolio object
    @quantity = args[:quantity]
    @price = args[:price]

    @security_object.add_shares_to_brokerage(@quantity)
    @security_object.attach_to_asset(self)
    #@ticker_symbol = ticker_symbol
    #@data_handler = DataHandler.new(self)
    #@num_shares = num_shares
  end

  def portfolio_object
    return @portfolio_object
  end

  def to_s()
    return "#{@security_object.ticker_symbol}:\t#{@quantity}"
  end

end