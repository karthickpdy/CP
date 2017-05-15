

# def next_left(r,c)
# 	# puts "#{@left[r]}"
# 	return c if @seats[r][c]
# 	return nil if @left[r][c].nil? || c <= 0
# 	return @left[r][c] = next_left(r,@left[r][c])
# end

# def next_right(r,c,m)
# 	# puts "#{@right[r]}"
# 	return c if @seats[r][c]
# 	return nil if @right[r][c].nil? || c >= m - 1
# 	return @right[r][c] = next_right(r,@right[r][c],m)
# end


def next_left(r,c)
	# puts "#{@left[r]}"
	return c if @seats[r][c]
	return nil if @left[r][c].nil? || c <= 0
	return @left[r][c] = next_left(r,@left[r][c])
end

def next_right(r,c,m)
	# puts "#{@right[r]}"
	return c if @seats[r][c]
	return nil if @right[r][c].nil? || c >= m - 1
	return @right[r][c] = next_right(r,@right[r][c],m)
end


n,m,k = gets.split(" ").map(&:to_i)
@seats = []
@left = []
@right = []
n.times do |i|
	@seats << Array.new(m,true)	
	@left << [nil].push(*(0..m-2))
	@right << ((1..m-1).to_a << nil)
end
res = []
k.times do
	x1,y1 = gets.split(" ").map(&:to_i)
	x1 = x1 - 1 
	y1 = y1 - 1
	if @seats[x1][y1]
		@seats[x1][y1] = false
		res << [x1,y1]
		@right[x1][y1-1] = next_right(x1,y1,m)
		@left[x1][y1+1] = next_left(x1,y1)

	else
		d = 0
		while true
			found = false
			l = x1-d
			l = 0 if l < 0
			r = x1+d
			r = n - 1 if r > n - 1 
			(l..r).each do |i|
				left = @left[i][y1]

				if  left && ((y1-left).abs + (x1 - i).abs == d)
					@seats[i][left] = false
					@left[i][y1+1] = next_left(i,y1)
					res << [i,left]
					found = true
					break
				end
				right = @right[i][y1]
				if  right && ((y1-right).abs + (x1 - i).abs == d)
					@seats[i][right] = false
					res << [i,right]		
					@right[i][y1-1] =  next_right(i,y1,m)			
					found = true
					break
				end
			end
		 	if found
				puts "#{res[-1]}"
				puts "left #{@left}"
				puts "right #{@right}"
				# puts "seats #{@seats}"

				break
			end
			d += 1
		end
	end
	# x1 = x1-1
	# y1 = y1-1
	# if seats[x1][y1]
	# 	seats[x1][y1] = false
	# 	res << [x1,y1]
	# else
	# 	diff = 1
	# 	while true
	# 		found = false
	# 		diff_set = []
	# 		(0..diff).each do |i|
	# 			row_diff = diff - i
	# 			col_diff = i
	# 			# puts "#{row_diff},#{col_diff}"
				
	# 			x2 = x1 - row_diff
	# 			y2 = y1 - col_diff
	# 			diff_set << [x2,y2]
				
	# 			x2 = x1 - row_diff
	# 			y2 = y1 + col_diff
	# 			diff_set << [x2,y2]
				
	# 			x2 = x1 + row_diff
	# 			y2 = y1 - col_diff
	# 			diff_set << [x2,y2]
				
	# 			x2 = x1 + row_diff
	# 			y2 = y1 + col_diff
	# 			diff_set << [x2,y2]

	# 		end
	# 		diff_set.uniq!
	# 		diff_set.sort!
	# 		# puts "diff #{diff_set}"
	# 		diff_set.each do |d|
	# 			x2,y2 = d
	# 			if x2>=0 && y2>=0 && x2 <n && y2 < m && seats[x2][y2]
	# 				# puts "#{x2+1},#{y2+1}"
	# 				seats[x2][y2] = false
	# 				res << [x2,y2]
	# 				found = true
	# 				break
	# 			end
	# 		end
	# 		break if found
	# 		# puts "hre #{found}"
	# 		break if found
	# 		diff += 1
	# 	end
	# end
end
puts "res"
res.each do |a|
	puts "#{a[0]+1} #{a[1]+1}"
end