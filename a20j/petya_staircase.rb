n,m = gets.split(" ").map(&:to_i)
if m != 0
	dirty = gets.split(" ").map(&:to_i)
	dirty.sort!
	ans = true
	dirty.each_cons(3) do |a,b,c|
		# puts "ele #{a} #{b} #{c}"
		# puts "diff #{b - a == 0 && c - b == 0}"
		if b - a == 1 && c - b == 1
			ans = false
			break
		end
	end
	ans = false if dirty.include?(1) || dirty.include?(n)
	puts ans ? "YES" : "NO"
else
	puts "YES"
end
