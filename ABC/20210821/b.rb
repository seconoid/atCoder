n = gets.to_i
k = 0

loop do
  break if 2 ** k > n
  k += 1
end

puts k - 1