n,k = gets.split(" ").map(&:to_i)

pairs = n / 2

remaining = k - (pairs - 1)
if n == 1
	ans = k == 0 ? [1] : [-1]
elsif remaining > 0
	ans = [] 
	x = remaining * 2 + 2
	((pairs-1)*2).times do
		ans << x
		x += 1	
	end
	ans << remaining << remaining * 2
	one_off = ans[-1] + 1
	ans << one_off if n % 2 != 0
else
	ans = [-1]
end

puts ans.join(" ")