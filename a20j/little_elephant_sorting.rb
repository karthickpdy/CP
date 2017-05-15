n = gets.to_i
arr = gets.split(" ").map(&:to_i)
dp = [0]
(1..(n-1)).each do |i|
	val = [dp[i-1],arr[i-1]].max
	if val > arr[i]
		dp[i] = val 
	else
		dp[i] = 0
	end
	# if dp[i]
end
puts "#{dp}"
ans = [0]
(1..(n-1)).each do |i|
	ans[i] = 0
	if dp[i] != 0
		if dp[i] == dp[i-1]
			ans[i] = [dp[i] - arr[i],ans[i-1]].max
			ans[i-1] = 0
		else
			ans[i] = dp[i] - arr[i]
		end
	end
end
puts "#{ans}"
puts ans.inject(0,:+)