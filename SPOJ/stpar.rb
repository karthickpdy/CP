
while true
	
	n = gets.to_i
	break if n == 0
	arr = gets.split(" ").map(&:to_i)
	


	stack = []
	needed = 1
	i = 0

	ans = true

	while i < n
		if arr[i] == needed
			i += 1
			needed += 1
		elsif stack[-1] == needed
			stack.pop
			needed += 1
		else
			if stack.empty? || stack[-1] > arr[i]
				stack << arr[i]
				i += 1
			else
				ans = false
				break
			end
		end
		
	end

	if ans
		until stack.empty?
			a = stack.pop
			if a == needed
				needed += 1
			else
				ans = false
				break
			end 
		end
	end
	puts ans ? "yes" : "no"
	puts
end