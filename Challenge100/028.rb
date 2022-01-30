# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_11_C&lang=ja

def resolve
  n = gets.to_i
  lists = n.times.map do
    gets.split.map(&:to_i)
  end

  bfs(1, lists).sort.each do |u, dist|
    puts "#{u} #{dist}"
  end
end

def bfs(start_v, lists)
  dists = (1..lists.size).each_with_object({}) { |i, hash| hash[i] = -1 }
  queue = [start_v]

  dists[start_v] = 0

  until queue.empty? do
    v = queue.shift
    nodes = lists[v - 1][2..-1]

    nodes.each do |next_v|
      next if seen?(dists, next_v)

      dists[next_v] = dists[v] + 1
      queue << next_v
    end
  end

  dists
end

def seen?(dists, v)
  dists[v] != -1
end

resolve
