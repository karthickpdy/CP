def sum(arr,s,i)	
	return true if s == 0
	return false unless arr[i] 
	return sum(arr,s-arr[i],i+1) || sum(arr,s,i+1)
end

t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	s = gets.to_i
	puts sum(arr,s,0) ? "YES" : "NO"
end