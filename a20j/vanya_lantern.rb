n,l = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
arr.sort!
diff = []
(1..n-1).each do |i|
	diff << arr[i] - arr[i-1]
end

max_diff = diff.max || 0
ans = max_diff / 2.0
val = arr[0] unless arr.include?(0)
ans = val if val && val > ans

val = l - arr[-1] unless arr.include?(l)
ans = val if val && val > ans


puts ans.to_f