n,actual_time = gets.split(" ").map(&:to_i)
min = []
max = []
n.times do
	a,b = gets.split(" ").map(&:to_i)
	min << a
	max << b
end
min_sum = min.inject(0,:+)
max_sum = max.inject(0,:+)
ans = false
ans_arr = []
if min_sum <= actual_time && actual_time <= max_sum
	ans = true
	rem_sum = actual_time - min_sum
	n.times do |i|
		ans_arr[i] = min[i]		
		if rem_sum > 0 && max[i] != min[i]
			x = max[i] - min[i]
			x = rem_sum if rem_sum < x			
			ans_arr[i] += x
			rem_sum -= x
		end
	end
end
if ans
	puts "YES"
	puts ans_arr.join(" ")
else
	puts "NO"
end