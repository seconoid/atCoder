# https://www.ioi-jp.org/joi/2008/2009-ho-prob_and_sol/2009-ho.pdf#page=4
D = gets.to_i # 全長
N = gets.to_i # 店舗数
M = gets.to_i # 注文数

# 本店以外の店舗の位置
LIST_D = (N - 1).times.map do |i|
  gets.to_i
end

# 宅配先の位置
LIST_K = M.times.map do |i|
  gets.to_i
end

def resolve(d, n, m, list_d, list_k)
  shops = [0, list_d].flatten
  delivery_list = list_k

  delivery_list.sum { |deliver_to| search_shortest_path(deliver_to, shops, d) }
end

def search_shortest_path(deliver_to, shops, d)
  shops.map { |shop| [(shop - deliver_to).abs, (shop + d - deliver_to).abs].min }.min
end

puts resolve(D, N, M, LIST_D, LIST_K)