t = gets.to_i
t.times do 
	gets
	n,m = gets.split(" ").map(&:to_i)
	i = 0
	j = 0
	god = gets.split(" ").map(&:to_i).sort
	mech = gets.split(" ").map(&:to_i).sort
	while i < n && j < m
		if god[i] == mech[j] || god[i] > mech[j]
			j += 1
		else
			i += 1
		end				
	end
	if i == n
		ans = "MechaGodzilla"
	else
		ans = "Godzilla"
	end
	# puts 
	puts ans
end