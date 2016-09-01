def subset_sum(arr,sum,i)
	return true if sum == 0
	return false if !arr[i] || sum < 0
	subset_sum(arr,sum - arr[i],i+1) || subset_sum(arr,sum,i+1)
end

t = gets.to_i
t.times do 
	n,m = gets.split(" ").map(&:to_i)
	arr = []
	n.times do 
		arr << gets.to_i
	end
	puts subset_sum(arr,m,0) ? "Yes" : "No"
end
