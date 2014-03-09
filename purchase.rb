class Purchase
  def initialize(args)
    # so this is a more complicated class. We'll need some mechanism to have it know what kind of asset is being purchased.
    # For example, it should be able to args that include the asset purchased, the quantity, and the price (assume that this is a finalized purchase and not an order)
    @purchase_price =
    @purchase_amount =
    @purchase_asset = # here it's important to realize you should be able to put any kind of asset so a stock, bond, or a mutual fund

    @source_portfolio =

    # one key thing here will be figuring out how to send a message to the portfolio, account, and brokerage to record a link to the purchase
  end

  def to_s
    # write a custom to_s method so that it displays a handy reference to the purchase
    # so like --> Purchase: Andy, Stock: AAPL, Quantity: 3, Price: 88.95
  end


end