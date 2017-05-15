l,b,r = gets.split(" ").map(&:to_i)
d = r * 2
ans = true
ans = false if d > [l,b].min
# x = 0
# y = 0

# count = 0
# left_x = d
# right_x = l - d
# top_y = d
# bottom_y = b - d

# while true
# 	while x + d <= l
# 		break if (x >= left_x && x <= right_x && y >=top_y && y <= bottom_y)
# 		count += 1
# 		x += d
# 	end
# 	y += d
# 	break if y + d > b
# 	x = 0
# end
# puts "#{count}"
puts ans ? "First" : "Second"

#Good - Dont ever think of playing the game in game questions. Just think of the best move and work backwards