# input
# 10
# 9 4
# 4 3
# 1 1
# 4 2
# 2 4
# 5 8
# 4 0
# 5 3
# 0 5
# 5 2
# output
# 10

def resolve

end

#O(n^2)
# TODO 2点ごとに、正方形が作れる点が存在するかチェックする
def find_temple(n, shrinks)
  shrinkes.each do |x, y|

  end
end

# 対角の2点をもとに、正方形になるような他の点があるか判定する
def find_square?(shrink, diagonal_shrink, shrinks)
  shrink_x = shrink[0]
  shrink_y = shrink[1]
  diagonal_shrink_x = diagonal_shrink[0]
  diagonal_shrink_y = diagonal_shrink[1]
end


n = 10
x_y_list = [
  [9, 4],
  [4, 3],
  [1, 1],
  [4, 2],
  [2, 4],
  [5, 8],
  [4, 0],
  [5, 3],
  [0, 5],
  [5, 2]
]
ac = 10

puts find_temple(n, x_y_list) == ac ? 'AC' : 'WA'
