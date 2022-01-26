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
