s = gets.chomp
t = gets.chomp

if s == t
  puts 'Yes'
  return
end

if s.size == 2
  if s.reverse == t
    puts 'Yes'
    return
  else
    puts 'No'
    return
  end
end

(s.size - 2).times do |i|
  dup = s.dup

  tmp = dup[i]
  dup[i] = s[i + 1]
  dup[i + 1] = tmp

  if dup == t
    puts 'Yes'
    return
  end

  dup = s.dup

  tmp = dup[i + 2]
  dup[i + 2] = s[i + 1]
  dup[i + 1] = tmp

  if dup == t
    puts 'Yes'
    return
  end
end

puts 'No'