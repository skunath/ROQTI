class Asset
  def initialize(args)
    @current_quantity = 0 # set it based on args?
    @avg_purchase_price = 0 # set it based on args?
  end

  def current_value()
    #Will this be calculated the same way for all types of assets?
    #making this a method bc I assume you want to check w Market every time,
    #setting an instance variable may be more appropriate 
    return 0
  end

  def current_return()
    return 0
  end

end
