n,m,s,f = gets.split(" ").map(&:to_i)
steps = {}
m.times do
	t,l,r = gets.split(" ").map(&:to_i)
	steps[t] = [l,r]
end
if s < f
	direction = 1
	val = "R"
else
	direction = -1
	val = "L"
end
curr = s
ans = []
i = 1
while true
	can_reach = true
	next_spy = curr + direction
	ss = steps[i]
	if ss
		range = (ss[0]..ss[1])
		# puts "#{i} #{range.include?(curr) || range.include?(next_spy)}"
		can_reach = false if range.include?(curr) || range.include?(next_spy)
	end
	# puts "can_reach #{can_reach} curr #{curr} next_spy #{next_spy}"
	if can_reach
		ans << val
		curr = next_spy 
	else
		ans << "X"
	end
	i += 1
	break if curr == f
end
puts ans.join("")