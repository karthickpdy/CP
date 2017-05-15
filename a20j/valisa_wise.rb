r1,r2 = gets.split(" ").map(&:to_i)
c1,c2 = gets.split(" ").map(&:to_i)
d1,d2 = gets.split(" ").map(&:to_i)
temp = []
sol = false
(1..9).each do |a|
	temp = []

	sol = false

	if a < r1 && a < c1 && a < d1 && 
		temp << a
		second = r1 - a
		if second < c2 && second < d2 && (second + d1 - a) == c2 && (second + c1 - a) == d2 && !temp.include?(second)
			temp << second
			third = d2 - second
			if a + third == c1 && !temp.include?(third)
				temp << third 
				fourth = r2 - third
				if second + fourth == c2 && a + fourth == d1 && !temp.include?(fourth)
					temp << fourth 
					sol = true
				end
			end
		end
	end
	break if sol
end
sol = false if temp.any? { |e| e > 9  }
if sol
	puts "#{temp[0]} #{temp[1]}"
	puts "#{temp[2]} #{temp[3]}" 
else
	puts "-1"
end