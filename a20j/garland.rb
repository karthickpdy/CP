s1 = gets.chomp.split("")
s2 = gets.chomp.split("")
count1 = Hash.new(0)
s1.each do |a|
	count1[a] += 1
end

count2 = Hash.new(0)
s2.each do |a|
	count2[a] += 1
end

ans = true
s = 0
count2.each do |k,v|	
	if count1[k] != 0
		s += [count1[k],v].min
	else
		ans = false
		break
	end	
end
puts ans ? s : "-1"