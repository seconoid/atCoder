# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_10_A&lang=ja

# 0 <= N <= 44
N = gets.to_i

# 10_000 程度で stack level too deep (SystemStackError)
def fib(n)
  @memo ||= {}

  return 1 if n < 2
  return @memo[n] if @memo[n]

  @memo[n] = fib(n - 1) + fib(n - 2)
end

puts fib(N)