n = gets.to_i
stacks = []

n.times do
	stacks << gets.split(" ").map(&:to_i)
end
q = gets.to_i
q.times do
	ans = true
	inp = gets.split(" ").map(&:to_i)
	if inp[0] == 1
		stacks[inp[1]-1] << inp[2]
		# puts "#{inp}"
	elsif inp[0] == 0
		i,k = inp
		stacks[k-1].pop
	else
		# puts "#{stacks[0]}"
		min = stacks[0].min
		if min
			(1...n).each do |i|
				v = stacks[i].detect{|k| k > min }
				if v				
					min = v 
				else
					ans = false 
					break
				end
			end
		else
			ans = false
		end
		puts ans ? "YES" : "NO"
	end
			

end