t = gets.to_i
t.times do 
	a,b = gets.split(" ").map(&:to_i)
	if (b-a == 1)
		ans = a & b
	elsif b.odd?
		ans = b - 1
	else
		ans = (b - 2)
	end
			
	puts ans
end