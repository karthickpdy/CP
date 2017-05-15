x,y = gets.split(" ").map(&:to_i)
n = gets.to_i
if n%3 == 0
	if (n / 3).odd?
		ans = (y-x)
	else
		ans = -(y-x)
	end
elsif n % 3 == 2
	if (n / 3).even?
		ans = y
	else
		ans = -y
	end
else
	if (n / 3).even?
		ans = x
	else
		ans = -x
	end
	
end
puts ans % ((10**9)+7)

#Good - Nice solution - http://codeforces.com/problemset/problem/450/B
#