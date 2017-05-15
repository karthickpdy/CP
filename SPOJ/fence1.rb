PI = 3.14159
while true
	l = gets.to_f
	break if l == 0
	#perimeter = l = PI * r(semicircle)
	# r = l / PI
	#area = PI*r^2 / 2
	# area = l^2/PI/2
	puts "%.2f" % ((l*l)/PI/2.0).round(2)
end