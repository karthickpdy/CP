a,n,k = gets.split(" ").map(&:to_i)
if n == 0
puts Array.new(k,0).join(" ")  
else
arr = []
while a > 0
	arr << a % (n+1)
	a /= n + 1	
end
# puts "arr #{arr}"
puts arr.fill(0,arr.length..k-1)[0..k-1].join(" ")
end
