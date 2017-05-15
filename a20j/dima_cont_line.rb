n = gets.to_i
arr = gets.split(" ").map(&:to_i)
# dist_array = []
# (1..n-1).each do |i|
# 	dist_array << (arr[i] - arr[i-1]).abs
# end
# if (dist_array == dist_array.sort || dist_array == dist_array.sort.reverse)
# 	puts "no" 
# else
# 	puts "yes"
# end
semi_circles = []
(1..n-1).each do |i|
	val0 = [arr[i-1],arr[i]].min
	val1 = [arr[i-1],arr[i]].max
	semi_circles << [val0,val1]
end

ans = false

semi_circles.each_with_index do |s,i|
	semi_circles[i+1..-1].each do |a|
		if (s[0] < a[0] && a[0] < s[1] && s[1] < a[1]) || (a[0] < s[0] && s[0] < a[1] && a[1] < s[1])
			ans = true
			break
		end
	end
	break if ans
end

puts ans ? "yes" : "no"
