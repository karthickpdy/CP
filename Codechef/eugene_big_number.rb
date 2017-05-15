t = gets.to_i
def mod(a,n,m,l)
	return @dp[n] if @dp[n]
	x = n / 2
	y = n - x
	a = mod(a,x,m,l)
	b = mod(a,y,m,l)
	# puts "#{a} #{b}"
	@dp[n] = (b * (10**(l*x)) + a) % m 
end
t.times do 
	a,n,m = gets.split(" ").map(&:to_i)
	# @dp = {0 => 0,1 => a % m}
	# puts mod(a,n,m,a.to_s.length)
	puts (a * n) % m	
end
