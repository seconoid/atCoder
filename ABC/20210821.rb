## A
# s = gets.chomp
# puts s === "Hello,World!" ? 'AC' : 'WA'

## B
# n = gets.to_i
# k = 0
# loop do
#   break if 2 ** k > n
#   k += 1
# end
# puts k - 1

## C
# inputs = gets.split(" ")
# s = inputs[0]
# k = inputs[1].to_i

# puts s.chars.permutation.uniq.map { |str| str.join }.sort[k - 1]

## D
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


## E
# n = gets.to_i
# s = gets.chomp
