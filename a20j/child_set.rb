# def subset_sum(s,n,arr)
# 	return true if s == 0
# 	return false if n == 0 && s != 0
# 	return subset_sum(s,n-1,arr) if arr[n-1] > s

# 	if subset_sum(s-arr[n-1],n-1,arr)
# 		@sum_arr << n
# 		return true
# 	end 
# 	return subset_sum(s,n-1,arr)

# end

sum,limit = gets.split(" ").map(&:to_i)
@sum_arr = []
arr = []
(1..limit).each do |i|
	arr << (i ^ (i & (i-1)))
end
ones = (limit/2.to_f).ceil
list = arr.each_with_index.sort.reverse
# puts "#{ones}"
# puts "#{list}"

ans = false
ans_list = []
list.each do |a|
	if sum <= ones
		ans = true
		break 
	end
	break if a[0] == 1 
	sum -= a[0]
	ans_list << a[1] + 1
end
if ans
	one_index = list.index{|i| i[0] == 1}
	while sum > 0
		sum -= 1
		ans_list << list[one_index][1] + 1
		one_index += 1
	end
	puts ans_list.length
	puts ans_list.join(" ")
else
	puts "-1"
end
# subset_sum(sum,arr.length,arr)

# if @sum_arr.length != 0
# 	puts @sum_arr.length
# 	puts @sum_arr.join(" ")
# else
# 	puts "-1"
# end

#Good - NIce solution. saw the editorial but still good