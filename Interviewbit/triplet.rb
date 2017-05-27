def triplet(arr,a,b)
	arr.sort!
	l = arr.length
	count = 0
	triplets = []
	(0...arr.length - 1).each do |i|
		j = i + 1
		k = l - 1
		while j < k
			sum = (arr[i] + arr[j] + arr[k])
			if  sum < a				
				j += 1
			elsif sum > b
				k -= 1
			else
				triplets << [arr[i],arr[j],arr[k]]
				count += 1
				k -= 1
			end

		end
	end
	# puts "#{triplets}"
	count
end

arr = [10,9,8,7,6,5,4,3,2,1]
a = 15
b = 15
puts triplet(arr,a,b)