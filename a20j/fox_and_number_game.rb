def gcd(a,b)
	if b == 0 
		return a
	else
		gcd(b,a%b)
	end
end


n = gets.to_i
arr = gets.split(" ").map(&:to_i)
arr.sort!
prev = arr[0]	
(1..n-1).each { |i|

	prev = gcd(prev,arr[i])
}
puts prev*n
