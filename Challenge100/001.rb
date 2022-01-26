require 'benchmark'

# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ITP1_7_B&lang=ja
# answer
def answer
  loop do
    n, x = gets.split(' ').map(&:to_i)

    break if n.zero? && x.zero?

    count = 0

    (1..n).each do |i|
      ((i + 1)..n).each do |j|
        ((j + 1)..n).each do |k|
          count += 1 if i + j + k == x
        end
      end
    end

    puts count
  end
end

# benchmark
Benchmark.bm do |x|
  x.report('result:') { answer }
end
