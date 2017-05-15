n = gets.to_i
arr = gets.split(" ").map(&:to_i)
# sum = [0]
# arr.each do |a|
# 	sum << a + sum[-1]
# end
# sum.shift
# count = 0
# (0...(n-2)).each do |i|
# 	((i + 1)...(n-1)).each do |j|
# 		if (sum[i] == (sum[j] - sum[i])) && (sum[i] == (sum[-1] - sum[j] ))
# 			# puts "#{i} #{j}"
# 			count += 1 
# 		end
# 	end
# end
# # puts "#{sum}"
# puts "#{count}"
sum = arr.inject(0,:+)
if sum % 3 != 0 
	puts 0
else
	sum /= 3
	s = 0	
	count = 0
	current_ways = 0
	arr[0..(n-2)].each do |a|
		s += a
		
		count += current_ways if s == 2 * sum	
		current_ways += 1 if s == sum
	end
	puts count
end