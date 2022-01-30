# https://atcoder.jp/contests/abc077/tasks/arc084_a
def resolve
  n = gets.to_i
  a_list = gets.split.map(&:to_i)
  b_list = gets.split.map(&:to_i)
  c_list = gets.split.map(&:to_i)

  count_makeable_altars(a_list, b_list, c_list)
end

def count_makeable_altars(top_parts, middle_parts, bottom_parts)
  top_parts.sort!
  bottom_parts.sort!

  count = 0
  middle_parts.each do |middle_part|
    lower_index_at_top = search_lower_index(middle_part, top_parts)
    next if lower_index_at_top.nil?

    upper_index_at_bottom = search_upper_index(middle_part, bottom_parts)
    next if upper_index_at_bottom.nil?

    top_parts_count = lower_index_at_top + 1
    bottom_parts_count = bottom_parts.size - upper_index_at_bottom

    count += top_parts_count * bottom_parts_count
  end

  count
end

def search_upper_index(num, nums)
  nums.bsearch_index { |x| x > num }
end

def search_lower_index(num, nums)
  tmp_index = nums.bsearch_index { |x| x >= num }

  if tmp_index.nil?
    nums.size - 1
  elsif tmp_index == 0
    nil
  else
    tmp_index - 1
  end
end

puts resolve