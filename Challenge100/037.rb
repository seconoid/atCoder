# https://github.com/seconoid/atCoder/issues/13
# 額面がc1, c2,..., cm　円の　m　種類のコインを使って、 n 円を支払うときの、コインの最小の枚数を求めて下さい。
# 各額面のコインは何度でも使用することができます。
# コインの最小枚数を１行に出力してください。

def resolve
  n, m = gets.split.map(&:to_i) # n: 支払う額, m: コインの種類数
  c_list = gets.split.map(&:to_i) # コインの額面

  puts minimum_count(n, m, c_list)
end

def minimum_count(n, m, coins)
  dp = Hash.new(n)

  (1..n).each do |payment|
    coins.each do |coin_amount|
      if coin_amount == payment
        dp[payment] = 1
      elsif coin_amount <= payment
        dp[payment] = [dp[payment - coin_amount] + 1, dp[payment]].min
      end
    end
  end

  dp[n]
end

resolve