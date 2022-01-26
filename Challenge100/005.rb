# https://atcoder.jp/contests/abc095/tasks/arc096_a
require 'benchmark'

def answer
  a, b, c, x, y = gets.split(' ').map(&:to_i)

  result = (0..[x, y].max).map do |k|
    2 * c * k + [(x - k) * a, 0].max + [(y - k) * b, 0].max
  end.min

  puts result
end

# benchmark
Benchmark.bm do |x|
  x.report('result:') { answer }
end


