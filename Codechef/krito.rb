def gcd(a,b)
if b == 0
  return a;
else
  return gcd(b, a % b);
end

end

t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	# dp = {}
	# (n-1).downto(0).each do |i|
	# 	dp[i] = 1
	# 	j = i + 1
	# 	max = 0
	# 	while j < n			
	# 		x,y = arr[i],arr[j] 
	# 		if gcd(x,y) != 1 && dp[j] > max
	# 			max = dp[j] 
	# 			# break
	# 		end
	# 		j += 1
	# 	end
	# 	dp[i] += max if max	!= 0		
	# end
	# puts "#{dp.values.max}"
	ans_arr = [arr[0]]
	ans_count = [1]
	arr[1..(n-1)].each do |a|
		l = ans_arr.length
		set = false
		max_ind = -1
		max_val = -1
		(0..(l-1)).each do |i|
			b = ans_arr[i]
			if gcd(a,b) != 1
				# puts "#{a} #{b}"
				if ans_count[i] >= max_val
					max_ind = i
					max_val = ans_count[i]
					set = true
				end
				# break
			end
		end
		unless set
			ans_arr << a
			ans_count << 1
		else
			ans_arr[max_ind] = a
			ans_count[max_ind] += 1
		end
	end
	# puts "#{ans_arr}"
	puts "#{ans_count.max}"
end