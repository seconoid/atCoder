#https://atcoder.jp/contests/dp/tasks/dp_a
## A

n = gets.to_i
h = gets.split(" ").map(&:to_i)
dp = Array.new(n)

h.each_with_index do |cost, index|
    if index == 0
        dp[0] = 0
        next
    end

    if index == 1
        dp[1] = (cost - h[0]).abs
        next
    end

    if ((h[index - 2] - cost).abs + dp[index - 2] < (h[index - 1] - cost).abs + dp[index - 1])
        dp[index] = (h[index - 2] - cost).abs + dp[index - 2]
    else
        dp[index] = (h[index - 1] - cost).abs + dp[index - 1]
    end
end

p dp[n - 1]

