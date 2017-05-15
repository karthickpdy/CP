# require 'bigdecimal'
# s = gets.chomp
# l = BigDecimal("0")
# r = BigDecimal("1")
# two = BigDecimal("2")
# ans = []
# s.each_char do |c|
# 	centre = (l + r)/ two
# 	ans << centre
# 	if c == 'l'
# 		r = centre
# 	else
# 		l = centre
# 	end
# end

# puts ans.each_with_index.sort.map{|a| a[1] + 1}.join("\n")


require 'bigdecimal'
s = gets.chomp
l = BigDecimal("0")
r = BigDecimal("1")
two = BigDecimal("2")
ans = {}
i = 1
s.each_char do |c|
	centre = (l + r)/ two
	ans[centre] ||= [] 
	ans[centre] << i
	if c == 'l'
		r = centre
	else
		l = centre
	end
	i += 1
end

ans.keys.sort.each do |k|
	puts ans[k].join("\n")
end