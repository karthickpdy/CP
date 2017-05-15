t = gets.to_i
t.times do 
	a,b = gets.split(" ").map(&:to_i)
	n = a ^ b
	c = 0
	while n > 0
		n &= (n-1)
		c += 1
	end
	puts c
end