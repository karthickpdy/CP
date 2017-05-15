n,k = gets.split(" ").map(&:to_i)
arr = (1..(2 * n)).to_a
(1..k).each do |i|
	l,m = 2 * i - 1,(2 * i) - 2
	arr[l],arr[m] =  arr[m],arr[l]
end
puts arr.join(" ")