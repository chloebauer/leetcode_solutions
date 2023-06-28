# @param {Integer[]} prices
# @return {Integer}
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/?envType=study-plan-v2&envId=top-interview-150
def max_profit(prices)
  profit = 0

  prices.each_cons(2) do |a,b|
    profit += b - a if b > a
  end
  profit
end

p max_profit([7,1,5,3,6,4])
p max_profit([1,2,3,4,5])
p max_profit([7,6,4,3,1])