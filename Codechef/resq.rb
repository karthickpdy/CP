def find_factors(n)
	min_diff = n
	(1..Math.sqrt(n)).each do |i|
		if n % i == 0
			diff = (i - n/i).abs
			min_diff = diff if diff < min_diff
		end
	end
	min_diff
end

t = gets.to_i
t.times do 
	puts(find_factors(gets.to_i))
end