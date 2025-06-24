def stock_picker(stock_prices)
  # Take in an array of stock prices
  # Return a pair of days representing the best day to buy and the best day to sell
  return nil if stock_prices.length < 2
  
  min_price = stock_prices[0]
  buy_day = 0
  max_profit = stock_prices[1] - stock_prices[0]
  best_days = [0, 1]

  stock_prices.each_with_index do |current_price, current_day|
    next if current_day == 0

    potential_profit = current_price - min_price

    if potential_profit > max_profit
      max_profit = potential_profit
      best_days = [buy_day, current_day]
    end

    if current_price < min_price
      min_price = current_price 
      buy_day = current_day
    end
  end

  best_days
end