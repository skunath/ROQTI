class Bond < Asset
  def initialize(args)
    @maturity_date = args[:maturity_date] # this is the maturity date of the bond. That is when we'd get paid in full for it
  end

  def days_to_maturity()
    # find a way to return the number of days to maturity for this bond. This could get complicated, but we'll assume all bonds of the same type have the same maturity date
    return days_to_maturity
  end


end