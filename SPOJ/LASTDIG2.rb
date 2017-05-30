t = gets.to_i

same = [0,1,5,6]
cyclicity = {2=>4,3 => 4,4 => 2,7 => 4, 8 => 4, 9 => 2}

t.times do 
	a,b = gets.chomp.split(" ")

	b = b.to_i
	x = a[-1].to_i
	# ans = 1
	if b == 0
		ans = 1	
	elsif(same.include?(x))
		ans = x
	else
		b = b % cyclicity[x]
		b = cyclicity[x] if b == 0
		ans = (x ** (b)) % 10
	end
	puts ans
end