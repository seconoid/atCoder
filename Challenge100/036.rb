#https://github.com/seconoid/atCoder/issues/10
def resolve
  n, w = gets.split.map(&:to_i)
  items = n.times.map do
    gets.split.map(&:to_i)
  end

  puts dp(items, w)
end

def dp(items, max_w)
  dp = Hash.new(0)

  (1..max_w).each do |weight|
    items.each do |item_v, item_w|
      if item_w <= weight && dp[weight - item_w] + item_v > dp[weight]
        dp[weight] = dp[weight - item_w] + item_v
      end
    end
  end

  dp[max_w]
end

resolve