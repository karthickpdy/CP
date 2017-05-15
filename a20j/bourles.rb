# p,d = gets.split(" ").map(&:to_i)
# # arr = []
# l = p.to_s.length
# ans = p
# l.downto(1).each do |a|
# 	first = p / (10 ** (a)) - 1
# 	val = (first.to_s + ("9" * a)).to_i
# 	if val >= p - d
# 		ans = val 
# 		break
# 	end
# end

# puts ans


p,d = gets.split(" ").map(&:to_i)
# arr = []
p_string = p.to_s
l = p_string.length
ans = p
# Case where no ends with 9
count = 0
if p % 10 == 9
	p_string.reverse.each_char do |pp|
		if pp == "9"
			count += 1
		else
			break
		end
	end
end

l.downto(1).each do |a|
	if count == a
		ans = p
		break
	end
	first = p / (10 ** (a)) - 1
	val = (first.to_s + ("9" * a)).to_i
	if val >= p - d
		ans = val 
		break
	end
end

puts ans