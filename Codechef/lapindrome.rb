def lap?(a,b)
	h_a = Hash.new(0)
	h_b = Hash.new(0)
	a.each_char do |i|
		h_a[i] += 1		
	end
	b.each_char do |i|
		h_b[i] += 1		
	end
	h_a == h_b
end

t = gets.to_i

t.times do 
	s = gets.chomp
	n = s.length
	mid = n / 2
	a = s[0..mid-1]
	mid += 1 if n.odd?
	b = s[mid..-1]
	puts lap?(a,b) ? "YES" : "NO"
end