t = gets.to_i
t.times do 
	n = gets.to_i
	xenny = gets.split(" ").map(&:to_i)
	yanna = gets.split(" ").map(&:to_i)
	xenny_odd = xenny_even = yanna_odd = yanna_even = 0
	(0...n).each do |i|
		if i % 2 == 0
			xenny_even += xenny[i]
			yanna_even += yanna[i]
		else
			xenny_odd += xenny[i]
			yanna_odd += yanna[i]
		end
	end
	puts [(xenny_odd + yanna_even),(xenny_even + yanna_odd)].min
end