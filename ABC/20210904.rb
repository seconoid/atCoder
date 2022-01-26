## A
# s, t = gets.split(' ')
# puts [s, t] == [s, t].sort ? 'Yes' : 'No'

## B
# STRS = %w(ABC ARC AGC AHC)
# input_s = []

# 3.times do
#   input_s << gets.chomp
# end

# STRS.each do |str|
#   unless input_s.include?(str)
#     puts str
#     return
#   end
# end

## C
# n = gets.to_i
# array_p = gets.split(' ').map(&:to_i)
# array_q = Array.new(n)

# array_p.each_with_index do |p, i|
#   array_q[p - 1] = i + 1
# end

# puts array_q.join(' ')

## D
l, q = gets.split(' ').map(&:to_i)
querys = []
q.times do
  querys << gets.split(' ').map(&:to_i)
end

# index, length
woods = [[0, l]]

querys.each do |c, x|
  woods.each_with_index do |(from, length), index|
    if x > from && x < from + length
      if c == 1
        woods[index][1] = x - from
        if woods[index + 1]
          woods.insert(index + 1, [x, woods[index + 1][0] - x])
        else
          woods.insert(index + 1, [x, l - x])
        end
      else
        puts length
      end
      break
    end
  end
end
