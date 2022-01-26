# https://atcoder.jp/contests/abc122/tasks/abc122_b
require 'benchmark'

def answer
  s = gets.chomp

  matches = s.scan(/[ACGT]+/)
  puts matches.empty? ? 0 : matches.max_by(&:length).length
end

# benchmark
Benchmark.bm do |x|
  x.report('result:') { puts answer }
end
