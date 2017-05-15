t = gets.to_i
t.times do 
	c = 0
	n = gets.to_i
	(1..n).each do |i|
		(1..n).each do |j|
			if i != j && i ^ j <= n
				c += 1
			end
		end
	end
	puts c / 2
end