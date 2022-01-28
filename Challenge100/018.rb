# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_4_B&lang=ja

N = gets.to_i
S = gets.split.map(&:to_i)
Q = gets.to_i
T = gets.split.map(&:to_i)

def resolve(s, t)
  t.count do |n|
    binary_seach(n, s)
  end
end

def binary_seach(target, sorted)
  head = 0
  tail = sorted.size - 1

  while head <= tail
    index = (head + tail) / 2

    if sorted[index] == target
      return index
    elsif sorted[index] < target
      head = index + 1
    else
      tail = index - 1
    end
  end

  nil
end

puts resolve(S, T)