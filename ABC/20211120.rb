## A
# s, t, x = gets.split(' ').map(&:to_i)

# unless s < t
#   # 日付をまたぐ
#   t += 24
#   x += 24 if x < s
# end

# result = s <= x && x < t

# puts result ? 'Yes' : 'No'

## B
# require 'set'

# _, x = gets.split(' ').map(&:to_i)
# a = gets.split(' ').map(&:to_i)

# index = x - 1
# known_friends = Set.new

# loop do
#   if known_friends.include?(index)
#     break
#   else
#     known_friends << index
#     index = a[index] - 1
#   end
# end

# puts known_friends.size

## C
# n, k = gets.split(' ').map(&:to_i)
# scores = []
# n.times do
#   scores << gets.split(' ').map(&:to_i).sum
# end

# border = scores.sort[-k]

# scores.each do |score|
#   if score + 300 >= border
#     puts 'Yes'
#   else
#     puts 'No'
#   end
# end

## D
a = Array.new(2**20)
q = gets.to_i

queries = (1..q).each_with_object([]) do |_, array|
  array << gets.split(' ').map(&:to_i)
end

queries.each do |t, x|
  if t == 1
    tmp = 1
  else
    puts tmp
  end
end