
n,l,r = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
ans = []
arr.sort!
c = 0
(l..r).each do |i|
	arr.each do |a|
		if arr.detect{|x| x + a > i}
			c += 1
		end
	end	
end

puts c