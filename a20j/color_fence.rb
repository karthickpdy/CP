n = gets.to_i
arr = gets.split(" ").map(&:to_i)

min = arr.min
max = n/min
max_ind = arr.index(min)
digit = max_ind + 1
if max == 0 
	ans = "-1"
else
	ans = "#{digit}" * max
	curr_paint = n - (max * arr[digit - 1])
	# puts "digit #{digit - 1}"
	# puts "#{curr_paint}"
	pos = 0
	while curr_paint >= 0
		replace = false
 		8.downto(digit).each do |ind|
 			# puts "rem #{ind} #{curr_paint + arr[a-1] - arr[ind]}"
 			x = arr[ind] - arr[digit-1]
 			if curr_paint >= x 
 				ans[pos] = (ind + 1).to_s
 				curr_paint =  curr_paint - x
 				replace = true
 				break
 			end
 		end
 		break unless replace
 		pos += 1
 		break if pos == max
	end
 	
end

puts ans