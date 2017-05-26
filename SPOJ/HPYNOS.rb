n = gets.to_i
h = {}
found = false
t = 0
while true
	x = 0
	while n > 0
		r = n % 10
		x += r * r
		n /= 10		
	end
	# puts x
	t += 1

	if x == 1
		found = true
		break
	elsif h[x]
		break
	end
	
	h[x] = true
	n = x
end

puts found ? t : -1