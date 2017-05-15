# t = gets.to_i
# t.times do 
# 	z,n = gets.split(" ").map(&:to_i)
# 	arr = gets.split(" ").map(&:to_i)
# 	ans = false
# 	arr.each do |a|
# 		if a & z == 0
# 			ans = true
# 			break
# 		end
# 	end
# 	puts ans ? "Yes" : "No"
# end


t = gets.to_i
t.times do 
	z,n = gets.split(" ").map(&:to_i)
	arr = gets.split(" ").map(&:to_i)
	x = arr[0]
	arr.each do |a|
		x &= a
	end
	puts (x & z) == 0 ? "Yes" : "No"
end
