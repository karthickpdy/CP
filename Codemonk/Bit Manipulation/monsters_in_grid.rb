n,m,k = gets.split(" ").map(&:to_i)

arr = []
row_count = []
n.times do
	arr << gets.split(" ").map(&:to_i)
	row_count << arr[-1].count(1)
end
(0..2**n).each do |i|
	
end


row_count.sort!
row_count.reverse!

count = 0
row_count.each do |i|
	if k >=2
		count += i
		k -= 2
	else
		break
	end	
end
puts count