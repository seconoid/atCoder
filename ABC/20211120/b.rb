require 'set'

_, x = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)

index = x - 1
known_friends = Set.new

loop do
  if known_friends.include?(index)
    break
  else
    known_friends << index
    index = a[index] - 1
  end
end

puts known_friends.size