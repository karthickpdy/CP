

@dp = {}

l,a,b,c = gets.split(" ").map(&:to_i)

@dp[a] = 1
@dp[b] = 1
@dp[c] = 1

(1..l).each do |i|
	val = [@dp[i-a],@dp[i-b],@dp[i-c]].compact.max || 0
	val += 1
	if @dp[i]
		@dp[i] =  [@dp[i],val].max
	else
		@dp[i] = val if val > 1
	end
end
# puts "#{@dp}"
puts @dp[l]