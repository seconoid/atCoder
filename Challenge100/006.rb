# https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_d
require 'benchmark'

def answer
  n = gets.to_i
  s = gets.to_i

  p *(s.digits.permutation(3))
end

# benchmark
Benchmark.bm do |x|
  x.report('result:') { answer }
end


