n = gets.to_i
alex_l,alex_r = gets.split(" ").map(&:to_i)

# (n-1).times do
# 	l,r = gets.split(" ").map(&:to_i)
# 	x,y = l+1,r-1
# 	# x,y = y,x if x > y
# 	if l + 1 == r
# 		# puts "here" 
# 		alex -= [l]
# 	else
# 		alex -= (x..y).to_a
# 	end
# end
# length = 0
# (1..alex.length-1).each do |i|
# 	if (alex[i-1] + 1 == alex[i]) || (alex[i+1] && alex[i]+1 != alex[i+1])
# 		puts alex[i]
# 		length += 1 
# 	end
# end
# puts "#{alex}"
# puts length
used = Array.new(100,true)

(n-1).times do
	l,r = gets.split(" ").map(&:to_i)
	(l..r-1).each do |i|
		used[i] = false
	end
end
puts "#{used[alex_l..alex_r-1].count(true)}"