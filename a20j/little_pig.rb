n,m = gets.split(" ").map(&:to_i)
arr = []

n.times do
	arr << gets.split("")
end
eaten = Array.new(n)
eaten.map! { |e| Array.new(m,false) }
count = 0
(0..(n-1)).each do |i|
	(0..(m-1)).each do |j|
		if arr[i][j] == 'W'
			if arr[i][j+1] && arr[i][j+1] == 'P' && !eaten[i][j+1]
				eaten[i][j+1] = true
				count += 1
			elsif j > 0 && arr[i][j-1] == 'P' && !eaten[i][j-1]
				eaten[i][j-1] = true
				count += 1
			elsif arr[i+1] && arr[i+1][j] == 'P' && !eaten[i+1][j]
				eaten[i+1][j] = true
				count += 1
			elsif i > 0 && arr[i-1][j] == 'P' && !eaten[i-1][j]
				eaten[i-1][j] = true
				count += 1
			end									
		end
		# puts "#{i} #{j} #{arr[i][j]}"
		# puts "here #{count}"
	end
end
puts count