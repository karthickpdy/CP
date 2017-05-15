# def lucky(four,seven,n)
# 	if n == 0
# 		# puts "here"
# 		@fo = four
# 		@sev = seven
# 		return true
# 	end
# 	return false if n < 0
# 	if lucky(four,seven+1,n-7) || lucky(four+1,seven,n-4)
# 		return true
# 	else
# 		return false
# 	end	
# end

# @fo = 0
# @sev = 0

# n = gets.to_i

# # puts lucky(0,0,n)
# if lucky(0,0,n)
# 	puts "4" * @fo + "7" * @sev
# else
# 	puts "-1"
# end

n = gets.to_i

b = 0
min_a = 10 ** 12
min_b = 10 ** 12
min_ab = 10 ** 12

a = 0
ans = false
# a * 4 + b * 7 = n
while a * 4 <= n 
	b = (n - (a * 4))/7
	if (a * 4 + b * 7 == n) && ((a + b < min_ab) || (a + b == min_ab && b < min_b))
		min_a = a
		min_b = b
		min_ab = a + b
		ans = true
	end
	a += 1
end

if ans
	puts "4" * min_a + "7" * min_b
else
	puts "-1"
end
