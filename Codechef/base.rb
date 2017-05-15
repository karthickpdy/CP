# t = gets.to_i
# ans = []
# logs = {}
# (2..(10 ** 6)).each{|a| logs[a] = Math.log(a)}
# t.times do |i|
# 	c = 0
# 	# c1 = 0
# 	# base1 = []
# 	# base2 = []
# 	# n = gets.to_i
# 	# n = gets.to_i
# 	n = i
# 	if n == 0
# 		ans << 0
# 	elsif n == 1
# 		ans << "INFINITY"
# 	else
# 		log_n = Math.log(n)
# 		# (2..((log_n/Math.log(2))+1)).each do |a|
# 		(2..(Math.sqrt(n))).each do |a|
# 			#Find the largest exponent x for given base less than the number
# 			x = (log_n/logs[a]).round(10).floor
# 			# x = 1
# 			if (n / a ** x) == 1
# 				c += 1 
# 				# base1 << a
# 			end
# 		end
# 		ans << c + (n/2.0).ceil
# 		# puts "#{i} #{c} #{c1} #{base2 - base1}" if c != c1
# 	end
# end
# puts ans.join(",")
# ans.each {|a,i| puts "#{a}"}


t = gets.to_i
ans = []
logs = {}
(2..(10 ** 6)).each{|a| logs[a] = Math.log(a)}
t.times do |i|
	c = 0
	# c1 = 0
	# base1 = []
	# base2 = []
	# n = gets.to_i
	# n = gets.to_i
	n = gets.to_i
	if n == 0
		ans << 0
	elsif n == 1
		ans << "INFINITY"
	else
		log_n = Math.log(n)
		(2..(Math.sqrt(n))).each do |a|
		# (2..(Math.sqrt(n))).each do |a|
			#Find the largest exponent x for given base less than the number
			c += ((n+0.5)**(1/a.to_f)).floor-(((n+0.2)/2.0)**(1/a.to_f)).floor
		end
		ans << c + (n/2.0).ceil
		# puts "#{i} #{c} #{c1} #{base2 - base1}" if c != c1
	end
end
# puts ans.join(",")
ans.each {|a| puts a}