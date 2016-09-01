t = gets.to_i
t.times do
	g = gets.to_i
	g.times do 
		
		start,n,q = gets.split(" ").map(&:to_i)
		
		even = n / 2
		odd = n / 2

		odd += 1 if n.odd?
		res = 0
		if start == q
			ans = even
		else
			ans = odd
		end
		puts ans
	end
end

