def fact(n)
	return @dp[n] if @dp[n]
	i = 1
	(2..n).each do |a|
		i *= a
	end
	@dp[n] = i
	i
end

def comb(n,r=2)
	return 0 if n < r
    return 1 if n == r
    return n if r == 1
    return 1 if n == 0 
 #    comb(n-1,r) + comb(n-1,r-1)
 # num = fact(n)
 # denom = fact(r) * fact(n-r)
 # num / denom
 	(n * (n-1))/2
end
@dp = {}
n,m = gets.split(" ").map(&:to_i)
max = comb(n-m+1,2)

q = n / m
r = n % m
min = 1
min = (r * comb(q+1,2)) + ((m-r) * comb(q,2))

puts "#{min} #{max}"

#Good - COmbinatorics - min happens when team is split as equal, max happens when all are in one team and others have 1 person(the minimum)