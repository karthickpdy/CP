left,right = gets.split("^")
left.reverse!
sum_arr = []
i = 1
sum = 0
left.each_char do |l|
	sum += l.to_i * i if l != '='
	i += 1
end

sum_arr << sum

i = 1
sum = 0
right.each_char do |r|
	sum += r.to_i * i if r != '='
	i += 1
end
sum_arr << sum
# puts "#{sum_arr}"

if sum_arr[0] == sum_arr[1]
	ans = "balance"
elsif sum_arr[0] > sum_arr[1]
	ans = "left"
else
	ans = "right"
end
puts ans
