#https://github.com/seconoid/atCoder/issues/9

def resolve
  n, w = gets.split.map(&:to_i)
  items = n.times.map do
    gets.split.map(&:to_i)
  end

  puts dp(items, w)
end

def dp(items, max_w)
  dp = Array.new(items.size + 1) { Array.new(max_w + 1, 0) }

  items.each_with_index do |(item_v, item_w), i|
    (0..max_w).each do |weight|
      if  (item_w <= weight)
        dp[i + 1][weight] = [dp[i][weight - item_w] + item_v, dp[i][weight]].max
      else
        dp[i + 1][weight] = dp[i][weight];
      end
    end
  end

  dp.last.last
end

resolve