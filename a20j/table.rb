m,n = gets.split(" ").map(&:to_i)
arr = []
m.times do
	arr << gets.split(" ").map(&:to_i)
end
ans = nil
ans = 2 if arr[0].include?(1) || arr[m-1].include?(1)
unless ans
	j = 0
	(0..m-1).each do |i|
		if arr[i][j] == 1
			ans = 2
			break
		end
	end
end

unless ans
	j = n - 1
	(0..m-1).each do |i|
		if arr[i][j] == 1
			ans = 2
			break
		end
	end
end

ans = 4 unless ans
puts ans