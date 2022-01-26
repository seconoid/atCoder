# https://atcoder.jp/contests/pakencamp-2019-day3/tasks/pakencamp_2019_day3_c
require 'benchmark'

def answer
  n, m = gets.to_i

  result
end

puts answer

# benchmark
Benchmark.bm do |x|
  x.report('result:') { answer }
end
