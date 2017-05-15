y,k,n = gets.split(" ").map(&:to_i)
i = (y/k.to_f).ceil
start = k * i

arr = []
(start..n).step(k).each do |a|
	
	arr << a - y if a - y != 0
end
if arr.empty?
	puts -1
else
	puts arr.join(" ")
end
