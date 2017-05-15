t = gets.to_i
arr = []
i = 1
while i <= (10 ** 18)
	arr << i
	i <<= 1
end
t.times do 
	n = gets.to_i
	i = arr.index{|x| x > n} - 1
	sum = 0
	arr[0..i].combination(2).each do |a|
		s = a[0] + a[1]
		if (s <= n)
			sum = (sum + s) % 1000000007
		end
	end
	puts sum
end

# t = gets.to_i
# t.times do 
# 	n = gets.to_i
	
# 	arr = []
# 	i = 1
# 	while i <= n
# 		arr << i
# 	end
# 	sum = 0
# 	arr.combination(2).each do |a|
# 		s = a[0] + a[1]
# 		if (s <= n)
# 			sum += s
# 		end
# 	end
# 	puts sum
# end