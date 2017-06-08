def smallest(arr)
	stack = []
	ans = []
	arr.each do |a|
		while !stack.empty? && stack[-1] >= a
			stack.pop
		end
		if stack.empty?			
			ans << -1
		else
			ans << stack[-1]
		end
		stack << a
	end
	ans
end
puts("#{smallest([1,2,3,4,5])}")
puts("#{smallest([5,4,3,2,1])}")
puts("#{smallest([8,2,4,1,5,7,9])}")