n = gets.to_i
arr = gets.split(" ").map(&:to_i)
diff_arr = []
(1..n-1).each do |i|
	diff_arr << (arr[i] - arr[i-1]).abs
end
diff_arr << (arr[0]-arr[-1]).abs
min,min_ind = diff_arr.each_with_index.min

if min_ind == n -1 
	a,b = n,1
else
	a,b = min_ind+1,min_ind + 2
end
puts "#{a} #{b}"