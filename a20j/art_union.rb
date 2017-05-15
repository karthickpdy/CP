m,n = gets.split(" ").map(&:to_i)
arr = []
m.times do
	arr << gets.split(" ").map(&:to_i)
end
dp = []

arr.each_with_index do |a,i|	
	dp << []
	a.each_with_index do |ele,j|
		calc = [0]
		calc << dp[i][j-1] if j > 0
		calc << dp[i-1][j] if i > 0
		
		dp[i][j] = calc.max + arr[i][j]
	end
end

ans = []
dp.each do |a|
	ans << a[-1]
end
puts ans.join(" ")