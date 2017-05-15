n = gets.chomp
arr = Array.new(n.length-1,0)

n.chars.each_cons(2).each_with_index do |a,i|
	# puts "#{a[0]} #{a[1]}"
	if a[0].to_i + a[1].to_i == 9
		arr[i] = 1
	end
end
# puts "#{arr}"
final = []
arr.chunk{|x| x}.each do |r|
	# puts "#{r}"
	l = r[1].length + 1
	if r[0] == 1
		# puts "#{r}"
		if l.odd?
			c = l/2 + 1			
		else
			c = 1
		end
		final << c
	end
end
ans = 1
# puts "#{final}"
ans *= final.inject(1,:*) #if final.length > 1

# if n.index("8888888888888888888888888888888888888888888888888888888888888888")
# 	puts "#{final}"	
# else
	puts ans
# end


# n = gets.chomp
# arr = Array.new(n.length-1,0)

# i = 1
# while i < n.length
# 	if n[i].to_i + n[i-1].to_i == 9
# 		arr[i] = 1
# 		i += 1 
# 	end
# 	i += 1
# end


# puts "#{arr}"
# final = []
# arr.chunk{|x| x}.each do |r|
# 	# puts "#{r}"
# 	l = r[1].length
# 	if r[0] == 1
# 		puts "#{r}"
# 		if l.even?
# 			c = (l/2) + 1
# 		elsif l == 1
# 			c = 1
# 		else
# 			c = l/2
# 		end
# 		final << c
# 	end
# end
# ans = 1
# # puts "#{final}"
# ans *= final.inject(1,:*) if final.length > 1
# puts ans