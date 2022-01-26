s, t, x = gets.split(' ').map(&:to_i)

unless s < t
  # 日付をまたぐ
  t += 24
  x += 24 if x < s
end

result = s <= x && x < t

puts result ? 'Yes' : 'No'