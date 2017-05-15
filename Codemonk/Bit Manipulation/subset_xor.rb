# t = gets.to_i
# t.times do 
# 	n = gets.to_i
# 	arr = gets.split(" ").map(&:to_i)
# 	l = arr.length
# 	a = 0
# 	(1...l).each do |i|
# 		a += i
# 	end
# 	a += 1
# 	if a.odd?
# 		ans = 0
# 		arr.each do |i|
# 			ans ^= i
# 		end
# 	else
# 		ans = 0
# 	end
# 	puts ans

# end

t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
    if n > 1
        puts 0
    else
        puts arr[0]
    end

end