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
