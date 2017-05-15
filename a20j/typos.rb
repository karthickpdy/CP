s = gets.chomp
ans = ""
s.each_char do |a|
	if ((a == ans[-1]) && ans[-2] && (a == ans[-2])) || ((a == ans[-1]) && (ans[-2] && ans[-3] && (ans[-2] == ans[-3])))
	else
		ans << a
	end
end
puts ans