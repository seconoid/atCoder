# https://atcoder.jp/contests/abc106/tasks/abc106_b
require 'benchmark'

def answer
  n = gets.to_i

  result = (1..n).count do |i|
    i.odd? && devide_count(i) == 8
  end

  result
end

def devide_count(num)
  (1..num).count {|i| num % i == 0 }
end

puts answer

# benchmark
Benchmark.bm do |x|
  x.report('result:') { answer }
end
