def stock_picker(stock_prices)
  # Take in an array of stock prices
  # Return a pair of days representing the best day to buy and the best day to sell
  day_indexes = (0...stock_prices.length).to_a
  stock_returns = day_indexes.combination(2).to_h do |day_pair| 
    stock_return = stock_prices[day_pair.last] - stock_prices[day_pair.first]
    [day_pair, stock_return]
  end

  stock_returns.max_by { |key, value| value }.first
end