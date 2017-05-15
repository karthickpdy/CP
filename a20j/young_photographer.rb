n,x = gets.split(" ").map(&:to_i)
start = -1
finish = 2000
n.times do
	a,b = gets.split(" ").map(&:to_i).minmax
	start = a if a > start
	finish = b if b < finish
end
ans = (start..finish).map{|a| (a-x).abs }.min
ans ||= -1
# puts "#{start} #{finish}"
puts "#{ans}"

# 3 3
# 0 7
# 8 10
# 11 13