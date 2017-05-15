n = gets.to_i
arr = gets.split(" ").map(&:to_i)
l = r = 0
arr.each_with_index do |a,i|
	s = i + 1
	if a != s
		l = s
		r = a
		break
	end
end
# puts "#{l} #{r}"
if l != 0 && r != 0
	(l..r).each do |z|
		i = z-1
		arr[i] = z	
	end
	val = (1..n).to_a
	# puts "#{arr} #{val}"
	if arr != val
		l = 0
		r = 0
	end
end
puts "#{l} #{r}"