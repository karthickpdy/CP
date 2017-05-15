# while true
# 	s = gets.chomp
# 	break if s == "0"
# 	dp = [1]
# 	ans = nil
# 	s.each_char.with_index do |c,i|
# 		if c != "0"
# 			add_val = 0
# 			if i - 1 >= 0 &&  "#{s[i-1]+c}".to_i <= 26
# 				add_val = i - 2 >= 0 ? dp[i-2] : 1 
# 			end
# 			dp[i] = dp[i-1] + add_val if i - 1 >= 0
# 		else
# 			x = "#{s[i-1]+c}".to_i
# 			if i - 1 >= 0 &&  (x == 10 || x == 20)
# 				dp[i] = i - 2 >= 0 ? dp[i-2] : 1 
# 			else
# 				ans = 0
# 				break
# 			end
# 		end
# 	end

# 	ans = dp[s.length - 1] unless ans
# 	puts ans
# end


while true
	s = gets.chomp
	break if s == "0"
	dp = [1]
	ans = nil
	s.each_char.with_index do |c,i|
		if c != "0"
			add_val = 0
			x = "#{s[i-1]+c}".to_i
			if i - 1 >= 0 &&  x>9 x <= 26
				add_val = i - 2 >= 0 ? dp[i-2] : 1 
			end
			dp[i] = dp[i-1] + add_val if i - 1 >= 0
		else
			x = "#{s[i-1]+c}".to_i
			if i - 1 >= 0 &&  (x == 10 || x == 20)
				dp[i] = i - 2 >= 0 ? dp[i-2] : 1 
			else
				ans = 0
				break
			end
		end
	end

	ans = dp[s.length - 1] unless ans
	puts ans
end