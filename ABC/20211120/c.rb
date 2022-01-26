n, k = gets.split(' ').map(&:to_i)
scores = []
n.times do
  scores << gets.split(' ').map(&:to_i).sum
end

border = scores.sort[-k]

scores.each do |score|
  if score + 300 >= border
    puts 'Yes'
  else
    puts 'No'
  end
end