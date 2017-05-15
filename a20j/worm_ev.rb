# def bin_search(arr,e)
# 	n = arr.length
# 	l = 0
# 	r = n - 1

# 	while l <= r
# 		m = l + (r-l) / 2
# 		if arr[m] == e
# 			puts "#{m}"
# 			return m
# 		elsif e < arr[m]
# 			r = m - 1
# 		else
# 			l = m + 1
# 		end			
# 	end

# 	return false
	
# end

n = gets.to_i
arr = gets.split(" ").map(&:to_i)
# arr.sort!
ans = false
ans_i = ans_j = ans_k = 0
arr.each_with_index do |i,ind_i|
	arr[ind_i+1..-1].each_with_index do |j,ind_j|
		# puts "#{i+j} ans #{bin_search(arr[ind_j+1..-1], i + j)}"
		ind_k = arr.index(i+j) #bin_search(arr[ind_j+1..-1], i + j)
		# puts "#{i} #{j} #{ind_k}"
		if ind_k
			ans = true
			ans_j = ind_i
			ans_k = ind_i + ind_j + 1
			ans_i = ind_k
			break
		end
	end
	break if ans
end

puts ans ? "#{ans_i+1} #{ans_j+1} #{ans_k+1}": "-1" 