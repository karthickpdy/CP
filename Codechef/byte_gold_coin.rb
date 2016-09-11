# https://www.codechef.com/problems/COINS
def convert(n)
	return @dp[n] if @dp[n]
	@dp[n] = [convert(n/2)+convert(n/3)+convert(n/4),n].max
end

@dp = {}
@dp[0] = 0
@dp[1] = 1


while s = STDIN.gets
	puts convert(s.to_i)
end
