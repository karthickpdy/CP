# n = gets.to_i
# a,b = gets.split(" ").map(&:to_i)
# i = 10
# ans = nil
# while n / i  > 0
# 	a_num = n / i
# 	b_num = n % i
# 	if (a_num % a == 0) && (b_num % b == 0) && (b_num != 0)
# 		ans = [a_num,b_num]
# 		break
# 	end
# 	i *= 10
# end
# if ans
# 	puts "YES"
# 	puts ans[0]
# 	puts ans[1]
# else
# 	puts "NO"
# end

n = gets.chomp
a,b = gets.split(" ").map(&:to_i)

# if n.length > 30
# 	puts "#{a} #{b}"
# 	puts "#{n.length}"
# 	# puts "#{n[31..-1]}"
# else


ans = nil
rem_a = [n[0].to_i % a]
rem_b = Array.new(n.length)
rem_b[n.length - 1] = n[-1].to_i % b
(1...n.length).each do |i|
	rem_a[i] = 	((rem_a[i-1] * 10) + n[i].to_i ) % a
end
mul = 10
((n.length - 2).downto(0)).each do |i|
	rem_b[i] = ((n[i].to_i * mul) + rem_b[i + 1]) % b
	mul =  (mul * 10) % b
end
if n.length > 30
	puts "#{a} #{b}"
	# puts "#{n.length}"
	# puts "#{n[31..-1]}"
	puts "#{rem_a[6]}"
	puts "#{rem_b[6]}"
end
(0..n.length-1).each do |i|
	a_string = n[0..i]
	b_string = n[(i+1)..-1]
	next if a_string[0] == "0" || b_string[0] == "0"
	# a_num,b_num = a_string.to_i,b_string.to_i
	if rem_a[i] == 0 && rem_b[i] == 0 && b_string.to_i != 0
		ans = [a_string,b_string]
		break
	end	
end
if ans
	puts "YES"
	puts ans[0]
	puts ans[1]
else
	puts "NO"
end


# end