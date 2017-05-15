# Generate numbers 0,1,2,4,8.. so on
#Check the number in the array which have that bit set(generate subsets such that only one bit is set)
# Check the and of the elements in such a set
t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	i = 1
	ans = false
	while i < 2**20	
		and_res = nil
		arr.each do |a|
			if a & i == i
				and_res = a unless and_res
				and_res &= a
				if and_res == i
					ans = true
					break
				end
			end
		end
		i *= 2
	end
	puts ans ? "YES" : "NO"
end