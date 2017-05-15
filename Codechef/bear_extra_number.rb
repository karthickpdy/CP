t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i).sort
	if arr[1] - arr[0] != 1
		puts arr[0]
	elsif arr[-1] - arr[-2] != 1
		puts arr[-1]
	else
		arr.each_cons(2)  do |prev,curr|
			if prev == curr
				puts curr
				break
			end
		end
	end
end