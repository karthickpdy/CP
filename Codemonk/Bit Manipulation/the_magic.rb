t = gets.to_i
t.times do 
	n = gets.to_i
	c = 0
	while n > 0
		n = n & (n-1)
		c += 1
	end
	puts c
end