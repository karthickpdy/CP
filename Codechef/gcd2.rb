def gcd(a,b)
	if b == 0 
		return a
	else
		gcd(b,a%b)
	end
end

t = gets.to_i
t.times do 
	a,b = gets.split(" ").map(&:to_i)
	puts gcd(a,b)
end