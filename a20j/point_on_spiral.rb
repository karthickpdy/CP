x,y = gets.split(" ").map(&:to_i)

# if x > 0 && y >= 0
# 	ans = (4 * x) - 3
	
# elsif x <= 0 && y > 0
# 	ans = (4 * y) - 2
# elsif x < 0 && y <= 0
# 	ans = (4 * x).abs - 1
# elsif x >= 0 && y < 0
# 	ans = (4 * y).abs
# end


if x > 0 && -x < y

ans = 0 if (x == 0 || x == 1) && y == 0

puts ans