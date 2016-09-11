n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
zero_count = arr.count(0)
positive_count = arr.count{|a| a > 0}
neg_count = n - positive_count - zero_count

puts positive_count/n.to_f
puts neg_count/n.to_f
puts zero_count/n.to_f

