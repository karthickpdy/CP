
n,m = gets.split(" ").map(&:to_i)
arr = []
n.times do
	arr << gets.split("")
end
a = true
b = true
(0..n-1).each do |i|
	b = a
	(0..m-1).each do |j|
		# if arr[i][j] == '.'			
		# 	candidate = a ? 'B' : 'W'
		# 	if i > 0 && arr[i-1][j] != '-'
		# 		candidate = borw(arr[i-1][j])
		# 	end

		# 	if j > 0 && arr[i][j-1] != '-'
		# 		candidate = borw(arr[i][j-1])
		# 	end
		# 	arr[i][j] = candidate
		# 	a = !a
		# end
		
		if arr[i][j] != '-'
			arr[i][j] = b ? 'B' : 'W'
		end

		b = !b
	end
	a = !a
end

arr.each do |a|
	puts a.join("")
end

#Good http://codeforces.com/problemset/problem/445/A