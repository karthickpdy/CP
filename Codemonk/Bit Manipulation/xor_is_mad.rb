t = gets.to_i
t.times do 
	c = 0
	x = gets.to_i
	while x > 0
		c += 1 if x & 1 == 0
		x /= 2
	end
	puts (2 ** c) - 1

end