n = gets.to_i
arr = gets.split(" ").map(&:to_i)
count = Hash.new(0)

arr.each do |a|
	count[a] += 1
end

ans = true
count.values.each do |c|
	unless c <= (n+1)/2
		ans = false
		break
	end
end

puts ans ? "YES" : "NO"

# count_arr = count.values.sort.reverse
# # puts "#{count_arr}"
# (0..count_arr.length-2).each do |i|
# 	j = i + 1
# 	puts "#{count_arr}"
# 	next if count_arr[i] == 0
# 	while j <= count_arr.length - 1
# 		if count_arr[i] <= count_arr[j]
# 			count_arr[i] = 0
# 			count_arr[j] -= count_arr[i]
# 			break
# 		else
# 			count_arr[i] -= count_arr[j]
# 			count_arr[j] = 0
# 		end
# 		j += 1
# 	end
# end
# count_arr.reject!{|a| a == 0}
# puts "#{count}"
# puts "#{count_arr}"
# if count_arr[0] > 1
# 	puts "NO"
# else
# 	puts "YES"
# end