t = gets.to_i
t.times do 
	n = gets.to_i
	l = n
	s = gets.chomp
	building = Array.new(n,true)
	s.each_char.with_index do |c,i| 
		if c == '1'			
			building[i] = false
			building[i-1] = false if i > 0
			building[i+1] = false if building[i+1]
		end
	end
	puts building.count(true)
end

# https://www.codechef.com/problems/LEBOMBS