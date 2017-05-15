while true
	n = gets.to_i
	break if n == 0
	ans = true
	arr = gets.split(" ").map(&:to_i)
	(0..(n-1)).each do |i|
		# puts " i #{i} arr #{arr[arr[i]-1]}"
		if i + 1 != arr[arr[i]-1]

			ans = false
			break
		end
	end
	puts ans ? "ambiguous" : "not ambiguous"
end