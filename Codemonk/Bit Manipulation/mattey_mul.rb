t = gets.to_i
t.times do 
	n,m = gets.split(" ").map(&:to_i)
	m_string = m.to_s(2)
	l = m_string.length
	ans = []
	m_string.each_char.with_index do |c,i|
		if c == '1'
			ans << "(#{n}<<#{(l - i - 1)})"
		end
	end
	puts ans.join(" + ")
end

#Good - Nicely derived and worked out