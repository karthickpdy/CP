t = gets.to_i
t.times do 
	gets
	vals = gets.chomp.split(" ")
	ans = vals[0].to_i
	curr_operator = nil
	(1...vals.length).each do |i|
		if vals[i] == "+" || vals[i] == "-" || vals[i] == "*" || vals[i] == "/"
			curr_operator = vals[i]
			# puts "dfd #{curr_operator}"
		elsif vals[i] == "="
			puts ans
		else
			# puts "here op #{vals[i]}"
			ans += vals[i].to_i if curr_operator == "+" 
			ans -= vals[i].to_i if curr_operator == "-" 
			ans *= vals[i].to_i if curr_operator == "*" 
			ans /= vals[i].to_i if curr_operator == "/"
		end
	end

end