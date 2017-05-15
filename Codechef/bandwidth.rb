t = gets.to_i
t.times do 
	n = gets.to_i
	ones_count = 0
	n.times do
		ones_count += gets.split(" ").map(&:to_i).inject(:+)
	end
	if ones_count <= n
		puts 0
	else
		reqd = n
		(1...n).each do |a|
			reqd += (n-a) * 2
			if ones_count <= reqd
				puts a
				break
			end
		end
	end
end