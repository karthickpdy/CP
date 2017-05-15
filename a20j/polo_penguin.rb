require "Set"

n,m,d = gets.split(" ").map(&:to_i)
arr = []

n.times do 
	arr << gets.split(" ").map(&:to_i)
end
arr.flatten!
arr.sort!
mid = arr[(arr.length)/2]
# puts "#{mid}"
rem = Set.new
sum = 0
arr.each do |a|
	rem.add(a%d)
	sum += (a - mid).abs
end
if rem.length > 1
	puts "-1"
else
	puts sum / d
end


# (0..(n-1)).each do |i|
# 	(0..(m-1)).each do |j|
# 		val = gcd(val,arr[i][j])
# 	end
# end

#Good - Thinking Nicely reduced 2d to 1d and sorted and calculated median- should have not seen the editorial, was getting there :(