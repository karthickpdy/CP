t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	month = 1
	amount = 0
	(0...arr.length).each do |i|
		if arr[i] == 1
			if (i+1) != month
				amount += 100
			end
			month += 1
		else
			amount += 1100
		end
	end
	puts amount
end