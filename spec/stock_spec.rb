require_relative '../lib/ROQTI'

describe Stock, "#score" do
  it "should return the ticker symbol when requested" do
    stock = Stock.new("aapl",0)

    stock.ticker_symbol.should eq("aapl")
  end
end

describe Stock, "#pay_dividend" do
  it "should return the value of the dividend" do
    num_stock = 10
    dividend = 50
    stock = Stock.new("aapl",10)
    user_1 = Portfolio.new("user_1")
    user_1.add_asset(stock, num_stock, 98)
    stock.pay_dividend(2004,12,12,dividend)
    user_1.cash_available.should eq(num_stock * dividend)
  end
end