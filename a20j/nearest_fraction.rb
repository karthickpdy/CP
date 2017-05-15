x,y,n = gets.split(" ").map(&:to_i)
# if y < n
# 	puts "#{x}/#{y}"
# else
	min_diff = n
	given_div = x/y.to_f
	val1 = nil
	val2 = nil
	n.downto(0) do |b|
		a1 = (given_div * b).floor
		a2 = a1 + 1
		# puts "a #{a} b #{b} #{div} #{min_diff}"
		[a1,a2].each do |a|
			div = (a/b.to_f)
			diff = (given_div - div).abs.round(15)
			if diff < min_diff || (diff == min_diff && a < val1)
				# puts "#{a} #{b} #{(given_div - div).abs} #{min_diff}"
				val1 = a
				val2 = b
				min_diff = diff
			end
		end
	end 

	puts "#{val1}/#{val2}"
# end'
