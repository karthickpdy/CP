n = gets.to_i
arr = gets.split(" ").map(&:to_i)
dp_left = [0]
arr.each_cons(2) do |a,b|
	dp_left << 0
	if b >= a
		dp_left[-1] += dp_left[-2] + 1
	end
end

dp_right = [0]

((n-2).downto(0)).each do |i|
	dp_right << 0
	if arr[i] >= arr[i+1]
		dp_right[-1] += dp_right[-2] + 1
	end
end
dp_right.reverse!
ans_list = dp_left.zip(dp_right).map { |x, y| x + y + 1 }
puts "#{ans_list.max}"
