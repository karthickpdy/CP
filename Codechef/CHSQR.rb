t = gets.to_i
t.times do 
	k = gets.to_i
	arr = (1..k).to_a.reverse * 3
	i = (k / 2) + 1
	k.times do
		puts arr[i..(i+k-1)].join(" ")
		i += 1
	end
end

#Good - Start from the mid element and print