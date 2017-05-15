n = gets.to_i
arr = gets.split(" ").map(&:to_i)
dp = [1]
ans = 0
arr.reverse_each do |e|  
	dp << e + dp[-1] - 1
	ans += dp[-1] 
end
puts ans