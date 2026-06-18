require 'debug'

class Stocks

  def choose_greater_diff(range1, range2)
    difference1 = range1[1] - range1[0]
    difference2 = range2[1] - range2[0]
    difference1 < difference2 ? range2 : range1
  end

  def recurse(current_buy, max_sell, prices, cur_day)
    current = [current_buy, max_sell]
    future = search(prices[cur_day..])

    choose_greater_diff(current, future)
  end

  def search(prices)
    current_buy = prices.first
    max_sell = prices.max
    return [current_buy, max_sell] if current_buy == prices.min

    prices.each_with_index do |cur_price, cur_day|
      max_sell = cur_price if cur_price > max_sell

      if cur_price < current_buy
        return recurse(current_buy, max_sell, prices, cur_day)
      end
    end
    
  end

  def stock_picker(prices)
    min_val, max_val = search(prices)
    [prices.index(min_val), prices.index(max_val)]
  end
end