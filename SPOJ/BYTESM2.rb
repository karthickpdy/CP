t = gets.to_i
t.times do 
	n,c = gets.gsub(/[^0-9 ]/,"").split(" ").map(&:to_i)
	arr = []
	length = 0
	while length < n * c do
		row = gets.gsub(/[^0-9 ]/,"").split(" ").map(&:to_i)
		arr << row
		length += row.length
	end
	x = arr.flatten!
	i = 0
	new_arr = []
	n.times do
		row = []
		c.times do
			row << arr[i]
			i += 1
		end
		new_arr << row
	end

	arr = new_arr.dup
	dp = [arr[0].dup]

	(1...arr.length).each do |i|
		dp << []
		(0...arr[i].length).each do |j|
			max_arr = [dp[i-1][j]]
			max_arr << dp[i-1][j-1] if j -1 >= 0
			max_arr << dp[i-1][j+1] if j+1 < c
			# puts "i,j #{i} #{j}"
			dp[i][j] = arr[i][j] + (max_arr.compact.max || 0)
		end
	end
	puts dp[-1].max
end