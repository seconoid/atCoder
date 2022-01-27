# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_11_B&lang=ja

def resolve(n, list)
  if n == 1
    puts [1, 2].join(" ")
  end

  timestamps = {}

  (1..n).each do |i|
    next if timestamps.has_key?(i)

    results = dfs(i, list)
    results.each do |k, v|
      next if timestamps.has_key?(k)
      timestamps[k] = v
    end
  end

  timestamps.sort.each do |v, timestamps|
    puts [v, timestamps].join(' ')
  end
end

def dfs(v, list)
  @count ||= 0
  @timestamps ||= {}

  @count += 1
  @timestamps[v] ||= []
  @timestamps[v] << @count

  nexts = list[v - 1][2..-1]
  nexts.each do |next_v|
    if @timestamps.has_key?(next_v)
      next
    else
      dfs(next_v, list)
    end
  end

  @count += 1
  @timestamps[v] << @count

  @timestamps
end

def main
  n = gets.to_i
  list = n.times.map { gets.split.map(&:to_i) }

  resolve(n, list)
end

main