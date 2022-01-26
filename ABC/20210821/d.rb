require 'prime'
n, m = gets.split(" ").map(&:to_i)
array_a = gets.split(" ").map(&:to_i).uniq.sort

dp = {}

result = (1..m).map.each_with_object([]) do |num, result|
  result << num if array_a.map {|a|
    if dp[num * a]
      1
    else
      gcd = num.gcd(a)
      dp[num * a] = true
      gcd
    end
  }.all?(1)
end

puts result.size
puts result