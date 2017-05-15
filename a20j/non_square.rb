n = gets.to_i

# while l <= r
# 	x  = l + (r-l)/2
# 	s = x.to_s.split("").map(&:to_i).inject(0,:+)
# 	puts x
# 	if ((x * x) + (s * x) - n) == 0 
# 		ans = x
# 		break
# 	else
# 		r = x - 1
# 	end
# end

# puts x
ans = false
min = n
(1..90).each do |s|
	a = 1
	b = s
	c = -n
	d = (b ** 2) - (4 * a * c)
	if d >=0
		r1 = (-b + Math.sqrt(d))/(2 * a)
		r2 = (-b - Math.sqrt(d))/(2 * a)
	elsif d == 0
		r1 = r2 = (-b)/(2 * a)
	end
	# puts "sum #{s} roots  #{r1} #{r2}"
	if r1 && r2
		arr = []
		sum = r1.to_i.to_s.split("").map(&:to_i).inject(0,:+)
		arr << r1 if r1 % 1 == 0 && r1 > 0 && s == sum
		sum = r2.to_i.to_s.split("").map(&:to_i).inject(0,:+)
		arr << r2 if  r2 % 1 == 0 && r2 > 0 && s == sum
		unless arr.empty?
		# puts "s #{s} ar #{r1} #{r2}"
			val = arr.min 
			min = val if val && val < min
			# puts "#{val}"
			ans = true
		end
	end
end
if ans	
	puts min.to_i
else
	puts "-1"
end