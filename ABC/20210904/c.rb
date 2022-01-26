n = gets.to_i
array_p = gets.split(' ').map(&:to_i)
array_q = Array.new(n)

array_p.each_with_index do |p, i|
  array_q[p - 1] = i + 1
end

puts array_q.join(' ')