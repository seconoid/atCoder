STRS = %w(ABC ARC AGC AHC)
input_s = []

3.times do
  input_s << gets.chomp
end

STRS.each do |str|
  unless input_s.include?(str)
    puts str
    return
  end
end