n,m,i,j,a,b = gets.split(" ").map(&:to_i)
corners = [[n,1],[1,m],[n,m],[1,1]]
res = [] 
# puts "#{corners}"
corners.each do |c|
	dist_a,dist_b = (i - c[0]).abs, (j - c[1]).abs
	if (dist_a % a) == 0 && (dist_b % b) == 0
		turn_a = dist_a / a
		turn_b = dist_b / b
		if (turn_a == turn_b) || ((turn_b - turn_a).abs % 2 == 0)
			# puts "#{turn_a},#{turn_b}"
			if turn_a != turn_b
				if turn_a < turn_b
					next if (i + a > n && i - a < 1)
				else
					# puts "here #{j+b}"
					next if (j + b > m && j - b < 1)
				end
			end
			res << [turn_a,turn_b].max
		end
	end
end

if res.empty?
	puts "Poor Inna and pony!"
else
	puts res.min
end

# 2,2
# 4,4
# 6,6
# 4,8

# dist_a = 2
# dist_b = 6

# turn_a = 1
# turn_b = 3


# 1,3
# 1,1

# dist_a = 0
# dist_b = 2
# turn_a = 0
# turn_b = 1

#Good - Way to go