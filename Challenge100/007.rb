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
  n = gets.to_i
  x_y_list = n.times.map do
    gets.split.map(&:to_i)
  end

  puts find_max_temple(n, x_y_list)
end

#O(n^2)
# TODO 2点ごとに、正方形が作れる点が存在するかチェックする
def find_max_temple(n, shrinks)
  max = 0

  n.times do |i|
    ((i + 1)...n).each do |j|
      if find_square?(shrinks[i], shrinks[j], shrinks)
        max = [max, calc_area(shrinks[i], shrinks[j])].max
      end
    end
  end

  max
end

def calc_area(shrink, diagonal_shrink)
  x = (shrink[0] - diagonal_shrink[0]).abs
  y = (shrink[1] - diagonal_shrink[1]).abs

  (x ** 2 + y ** 2) / 2
end

# 対角の2点をもとに、正方形にgなるような他の点があるか判定する
def find_square?(shrink, diagonal_shrink, shrinks)
  squareble_shrinks = squareble_shrinks(shrink, diagonal_shrink)
  shrinks.include?(squareble_shrinks[0]) && shrinks.include?(squareble_shrinks[1])
end

def center(shrink, diagonal_shrink)
  shrink_x = shrink[0]
  shrink_y = shrink[1]
  diagonal_shrink_x = diagonal_shrink[0]
  diagonal_shrink_y = diagonal_shrink[1]

  [(shrink_x + diagonal_shrink_x) / 2.0, (shrink_y + diagonal_shrink_y) / 2.0]
end

def squareble_shrinks(shrink, diagonal_shrink)
  center = center(shrink, diagonal_shrink)

  x_length = shrink[1] - center[1]
  y_length = shrink[0] - center[0]

  [
    [center[0] + x_length, center[1] - y_length],
    [center[0] - x_length, center[1] + y_length]
  ]
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

p find_max_temple(n, x_y_list) == ac ? 'AC' : 'WA'
