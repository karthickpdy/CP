
t = gets.to_i
t.times do 
	count = 0
	n,m,c = gets.split(" ").map(&:to_i)
	(1..Math.sqrt(c)).each do |i|
		if c % i == 0
			a,b = i,(c/i)
			count += 1 if a <= n && b <= m
			count += 1 if a !=b && a <= m && b <= n
		end
	end
	puts count
end