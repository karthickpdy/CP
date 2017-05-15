s = gets.chomp
count = Hash.new(0)
s.each_char do |c|
	count[c] += 1 if c == "4" || c == "7"
end

keys = count.keys

if keys.empty?
	ans = "-1"	
else
	if count["4"] && count["7"]
		if count["4"] >= count["7"]
			ans = "4"
		else
			ans = "7"
		end
	elsif count["4"]
		ans = "4"
	else
		ans = "7"
	end

end

puts ans
# 