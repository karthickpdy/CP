def bin_search(arr,e)
	n = arr.length
	l = 0
	r = n - 1

	while l <= r
		m = l + (r-l) / 2
		if arr[m] == e
			return true
		elsif e < arr[m]
			r = m - 1
		else
			l = m + 1
		end			
	end

	return false
	
end

s = gets.to_i
arr = []
(1..s).each do |a|
	val = (a * (a + 1) ) / 2
	arr << val
	break if val > s
end



arr.sort!
ans = false
arr.each do |a|
	if bin_search(arr,s-a)
		ans = true
		break 
	end
end

puts ans ? "YES" : "NO"

#Good - http://codeforces.com/problemset/problem/192/A