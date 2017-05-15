t = gets.to_i
t.times do 
	n = gets.to_i
	s = 0
	i = 1
	ans = -1
	(1..n).each do |i|
		s += i
		if s >= n
			ans = i
			s -= i
			break
		end
	end
	row,col = ans,n - s


	sum = row + 1
	numerator = sum - col
	denominator = col

	numerator,denominator = denominator,numerator if row.even?

	puts "TERM #{n} IS #{numerator}/#{denominator}"
end