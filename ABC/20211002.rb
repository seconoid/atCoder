## A
# a, b = gets.split(' ').map(&:to_i)
# puts 32 ** (a - b)

## B
# s = gets.chomp
# t = gets.chomp

# if s == t
#   puts 'Yes'
#   return
# end

# if s.size == 2
#   if s.reverse == t
#     puts 'Yes'
#     return
#   else
#     puts 'No'
#     return
#   end
# end

# (s.size - 2).times do |i|
#   dup = s.dup

#   tmp = dup[i]
#   dup[i] = s[i + 1]
#   dup[i + 1] = tmp

#   if dup == t
#     puts 'Yes'
#     return
#   end

#   dup = s.dup

#   tmp = dup[i + 2]
#   dup[i + 2] = s[i + 1]
#   dup[i + 1] = tmp

#   if dup == t
#     puts 'Yes'
#     return
#   end
# end

# puts 'No'

# C
n = gets.to_i
permutations = n.digits.permutation.to_a
min_digit = n.digits.max.to_i

max = 0
permutations.each do |nums|
  1.upto(nums.size - 2) do |i|
    num1 = nums[0..i].join.to_i
    num2 = nums[(i + 1)..].join.to_i

    result = num1 * num2
    if result > max
      p num1
      p num2
      max = result
    end
  end
end

p max

# puts array_q.join(' ')

## D
