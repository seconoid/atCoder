# https://atcoder.jp/contests/abc077/tasks/arc084_a
def resolve
  n = gets.to_i
  a_list = gets.split.map(&:to_i)
  b_list = gets.split.map(&:to_i)
  c_list = gets.split.map(&:to_i)

  a_list.sort!
  b_list.sort!
  c_list.sort!

  count_makeable_altars(a_list, b_list, c_list)
end

def count_makeable_altars(top_parts, middle_parts, bottom_parts)
  count = 0
  top_parts.each do |top_part|
    middle_bigger_index = search_bigger_index(top_part, middle_parts)
    break if middle_bigger_index.nil?

    middle_parts[middle_bigger_index..].each do |middle_part|
      bottom_bigger_index = search_bigger_index(middle_part, bottom_parts)
      break if bottom_bigger_index.nil?

      count += bottom_parts.size - bottom_bigger_index
    end
  end

  count
end

def search_bigger_index(num, nums)
  nums.bsearch_index { |x| x > num }
end

puts resolve