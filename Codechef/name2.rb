t = gets.to_i
t.times do 
	a,b = gets.chomp.split(" ")
	ans = false
	a,b = b,a if a.length < b.length
	j = 0
	ans = true
	(0..b.length-1).each do |i|
		found = false
		(j..a.length-1).each do |k|
			if a[k] == b[i]
				found = true
				j = k + 1
				break
			end
		end
		
		unless found
			ans = false 
			break
		end		
	end
	puts ans ? "YES" : "NO"
end