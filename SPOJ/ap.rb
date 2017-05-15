t = gets.to_i
t.times do 
	x,y,s = gets.split(" ").map(&:to_i)
	# a + 2d  = x
	# a + (n-3) d = y
	# 2a + nd -d = x+ y
	# 2a + (n-1)d = x + y
	# s = n/2(2a + (n-1) d)
	# s = n/2(x+y)
	#n = (2 * s)/(x+y)
	n = (2 * s) / (x + y)

	#2d - nd + 3d = x - y
	#(5 - n) d = x - y
	d = (x - y )/(5 - n)
	a = x - (2 * d)
	puts n
	n.times do
		print "#{a} "
		a += d
	end
end