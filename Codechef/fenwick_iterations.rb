t = gets.to_i
t.times do 
	l1,l2,l3,n = gets.split(" ")
	n = n.to_i
	# l = (l1 + (l2 * n )+ l3).to_i(2)
	# l = ((l1 + (l2 * n )+ l3).to_i(2) + 1).to_s(2).count('1')
	if l3.rindex('0')
		ans = l1.count('1') + (l2.count('1') * n) + (l3.to_i(2)+1).to_s(2).count('1')
	elsif l2.rindex('0')
		ans = l1.count('1') + (l2.count('1') * (n-1)) + (l2.to_i(2)+1).to_s(2).count('1')
	elsif l1.rindex('0')
		ans = (l1.to_i(2)+1).to_s(2).count('1')
	else
		ans = 1
	end
		
	puts ans
	# count = 0
	# while l > 0
	# 	down_l = l & (l+1)
	# 	l = down_l - 1
	# 	count += 1
	# end
	# puts count
end

# Good  -https://www.codechef.com/OCT16/problems/FENWITER
#Started with bruteforce
# Found its adding 1 to the number and counting 1 - implemented it
# Then found we need not construct the full string and just count 1s got full AC :D
