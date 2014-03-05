class Account
  def initialize(args)
    # assume that an account can have multiple portfolios associated with it.
    # also, assume that you are normall attached to only one brokerage
    @name = args[:name] # notice, we're using a hash to pass parameters here... what might that mean when invoking Account.new(**)?
    @brokerage = nil
    @portofolio = nil

    @purchases = []
  end

  def total_returns()
    returns = 0
    for portfolio in @portfolio
      returns += portfolio.total_returns # notice that portfolios will have to generate their own total returns
    end
  end

  def account_value()
    value = 0
    # perhaps create a for loop that scans through portfolios and gets the current account value

  end

end