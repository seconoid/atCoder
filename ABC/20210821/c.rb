inputs = gets.split(" ")
s = inputs[0]
k = inputs[1].to_i

puts s.chars.permutation.uniq.map { |str| str.join }.sort[k - 1]