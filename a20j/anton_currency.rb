copy = gets.chomp
ans = -1
last = copy[-1].to_i

# if copy.length < 20
# (0..(copy.length - 1)) do |i|
# 	v = copy[i].to_i
# 	if v.even? && v < last		
# 		copy[i],copy[-1] = copy[-1],copy[i]
# 		ans = copy.to_i
# 		break
# 	end
# end
# if ans == -1
# 	((copy.length - 1).downto(0)).each do |i|
# 		v = copy[i].to_i
# 		if v.even? && v > last
# 			copy[i],copy[-1] = copy[-1],copy[i]
# 			ans = copy.to_i
# 			break
# 		end
# 	end
# end
# even_nos = copy.each_char.with_index.map{|k,i| [k.to_i,i] if k.to_i.even?}.compact
copy.each_char.with_index do |e,i|
	v = e.to_i
	next if v.to_i.odd?

	if v < last
		ans = i
		break
	else
		ans = i
	end
end
if ans != -1
	copy[ans],copy[-1] = copy[-1],copy[ans]
	ans = copy
end
puts ans
# else

# 	copy.each_char.with_index do |e,i|
# 	v = e.to_i
# 	next if v.to_i.odd?

# 	if v < last
# 		ans = i
# 		break
# 	else
# 		ans = i
# 	end
# 	end
# 	# 
# 	puts copy[-1]
# end


#Good - Tried several approaches and then removed to_i and worked :/